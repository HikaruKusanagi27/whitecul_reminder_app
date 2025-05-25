import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:path/path.dart' as path;
import 'package:audioplayers/audioplayers.dart';

class VoicevoxService {
  static const String baseUrl = 'http://localhost:50021'; // ローカルVOICEVOX Engine

  // WhiteCULのスピーカーID（スタイル別）
  static const int whiteCulNormal = 23; // ノーマル
  static const int whiteCulHappy = 24; // たのしい
  static const int whiteCulSad = 25; // かなしい
  static const int whiteCulCrying = 26; // びえーん

  // テスト用：利用可能なスピーカー（ずんだもん あまあま）
  static const int testSpeakerId = 1; // ずんだもん あまあま

  // デフォルトはノーマルスタイル（WhiteCUL利用不可時はテスト用IDを使用）
  static const int whiteCulSpeakerId = whiteCulNormal;

  final http.Client _httpClient = http.Client();
  final FlutterTts _flutterTts = FlutterTts();
  final AudioPlayer _audioPlayer = AudioPlayer();

  /// WhiteCULの音声でテキストを読み上げ
  Future<bool> speakWithWhiteCul(
    String text, {
    double speed = 1.0,
    double pitch = 0.0,
    double intonation = 1.0,
  }) async {
    return await _speakWithWhiteCulStyle(
      text,
      whiteCulSpeakerId,
      speed: speed,
      pitch: pitch,
      intonation: intonation,
    );
  }

  /// スタイル別WhiteCUL音声再生
  Future<bool> speakWithWhiteCulStyle(
    String text,
    WhiteCulStyle style, {
    double speed = 1.0,
    double pitch = 0.0,
    double intonation = 1.0,
  }) async {
    final speakerId = _getStyleSpeakerId(style);
    return await _speakWithWhiteCulStyle(
      text,
      speakerId,
      speed: speed,
      pitch: pitch,
      intonation: intonation,
    );
  }

  /// スタイルからスピーカーIDを取得
  int _getStyleSpeakerId(WhiteCulStyle style) {
    switch (style) {
      case WhiteCulStyle.normal:
        return whiteCulNormal;
      case WhiteCulStyle.happy:
        return whiteCulHappy;
      case WhiteCulStyle.sad:
        return whiteCulSad;
      case WhiteCulStyle.crying:
        return whiteCulCrying;
    }
  }

  /// 内部：スタイル指定でWhiteCUL音声を再生
  Future<bool> _speakWithWhiteCulStyle(
    String text,
    int speakerId, {
    double speed = 1.0,
    double pitch = 0.0,
    double intonation = 1.0,
  }) async {
    try {
      print('=== 音声合成開始 ===');
      print('テキスト: $text');
      print('スピーカーID: $speakerId');
      print('速度: $speed, ピッチ: $pitch, イントネーション: $intonation');

      // 1. 音声クエリを生成
      var audioQuery = await _generateAudioQuery(text, speakerId);
      var usedSpeakerId = speakerId;

      // デバッグ用：代替機能を一時的に無効化
      // WhiteCULが利用できない場合、ずんだもんで代替
      // if (audioQuery == null && speakerId >= 23 && speakerId <= 26) {
      //   print('WhiteCULが利用できません。ずんだもん（あまあま）で代替します。');
      //   audioQuery = await _generateAudioQuery(text, testSpeakerId);
      //   usedSpeakerId = testSpeakerId;
      // }

      if (audioQuery == null) {
        print('音声クエリ生成に失敗しました。スピーカーID: $speakerId');
        return false;
      }

      // 2. パラメータを調整
      audioQuery['speedScale'] = speed;
      audioQuery['pitchScale'] = pitch;
      audioQuery['intonationScale'] = intonation;

      // 3. 音声を合成（代替スピーカーIDを使用）
      final audioData = await _synthesizeAudio(audioQuery, usedSpeakerId);
      if (audioData == null) return false;

      // 4. 音声ファイルを保存して再生
      return await _playAudioData(audioData);
    } catch (e) {
      print('WhiteCUL音声再生エラー: $e');
      // フォールバック: システムTTSを使用
      return await _fallbackTts(text);
    }
  }

  /// 音声クエリを生成
  Future<Map<String, dynamic>?> _generateAudioQuery(
    String text,
    int speakerId,
  ) async {
    try {
      // URLエンコーディング
      final encodedText = Uri.encodeComponent(text);

      // クエリパラメータとしてtextとspeakerを送信
      final uri = Uri.parse('$baseUrl/audio_query').replace(
        queryParameters: {'text': encodedText, 'speaker': speakerId.toString()},
      );

      final response = await _httpClient.post(
        uri,
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
      print('音声クエリ生成失敗: ${response.statusCode} ${response.body}');
      return null;
    } catch (e) {
      print('音声クエリ生成エラー: $e');
      return null;
    }
  }

  /// 音声を合成
  Future<Uint8List?> _synthesizeAudio(
    Map<String, dynamic> audioQuery,
    int speakerId,
  ) async {
    try {
      final response = await _httpClient.post(
        Uri.parse('$baseUrl/synthesis?speaker=$speakerId'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(audioQuery),
      );

      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
      print('音声合成失敗: ${response.statusCode}');
      return null;
    } catch (e) {
      print('音声合成エラー: $e');
      return null;
    }
  }

  /// 音声データを再生
  Future<bool> _playAudioData(Uint8List audioData) async {
    try {
      // 一時ファイルに保存
      final tempDir = Directory.systemTemp;
      final tempFile = File(
        path.join(
          tempDir.path,
          'whitecul_voice_${DateTime.now().millisecondsSinceEpoch}.wav',
        ),
      );

      await tempFile.writeAsBytes(audioData);

      // audioplayersで音声ファイルを再生
      await _audioPlayer.play(DeviceFileSource(tempFile.path));

      // 再生完了まで待機
      await _audioPlayer.onPlayerComplete.first;

      // 一時ファイルを削除
      try {
        await tempFile.delete();
      } catch (e) {
        print('一時ファイル削除エラー: $e');
      }

      return true;
    } catch (e) {
      print('音声再生エラー: $e');
      return false;
    }
  }

  /// フォールバック: システムTTSを使用
  Future<bool> _fallbackTts(String text) async {
    try {
      await _flutterTts.setLanguage('ja-JP');
      await _flutterTts.setPitch(1.2); // WhiteCULらしい高めのトーン
      await _flutterTts.setSpeechRate(0.9); // 少し落ち着いたスピード
      await _flutterTts.speak(text);
      return true;
    } catch (e) {
      print('フォールバックTTSエラー: $e');
      return false;
    }
  }

  /// VOICEVOX Engineの接続状態をチェック
  Future<bool> isVoicevoxEngineAvailable() async {
    try {
      final response = await _httpClient
          .get(
            Uri.parse('$baseUrl/version'),
            headers: {'Accept': 'application/json'},
          )
          .timeout(const Duration(seconds: 3));

      return response.statusCode == 200;
    } catch (e) {
      print('VOICEVOX Engine接続エラー: $e');
      return false;
    }
  }

  /// 利用可能なスピーカー一覧を取得
  Future<List<Map<String, dynamic>>?> getAvailableSpeakers() async {
    try {
      final response = await _httpClient.get(
        Uri.parse('$baseUrl/speakers'),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> speakers = json.decode(response.body);
        return speakers.cast<Map<String, dynamic>>();
      }
      return null;
    } catch (e) {
      print('スピーカー一覧取得エラー: $e');
      return null;
    }
  }

  /// WhiteCULスピーカーを検索
  Future<Map<String, dynamic>?> findWhiteCulSpeaker() async {
    try {
      final speakers = await getAvailableSpeakers();
      if (speakers == null) return null;

      // WhiteCUL関連の名前で検索
      for (final speaker in speakers) {
        final name = speaker['name'] as String? ?? '';
        print(
          'スピーカー: $name, UUID: ${speaker['speaker_uuid']}, スタイル: ${speaker['styles']}',
        );

        // WhiteCUL、白CUL、ホワイトCULなどの名前をチェック
        if (name.toLowerCase().contains('whitecul') ||
            name.toLowerCase().contains('white') ||
            name.toLowerCase().contains('cul') ||
            name.contains('白') ||
            name.contains('ホワイト')) {
          print('WhiteCUL候補発見: $speaker');
          return speaker;
        }
      }

      // スピーカーID 50もチェック
      for (final speaker in speakers) {
        final styles = speaker['styles'] as List<dynamic>? ?? [];
        for (final style in styles) {
          if (style['id'] == 50) {
            print('スピーカーID 50発見: $speaker');
            return speaker;
          }
        }
      }

      print('WhiteCULが見つかりませんでした');
      return null;
    } catch (e) {
      print('WhiteCUL検索エラー: $e');
      return null;
    }
  }

  /// リソースをクリーンアップ
  void dispose() {
    _httpClient.close();
    _audioPlayer.dispose();
  }
}

/// WhiteCULのスタイル
enum WhiteCulStyle {
  normal, // ノーマル
  happy, // たのしい
  sad, // かなしい
  crying, // びえーん
}

/// WhiteCULのボイスメッセージ定型文
class WhiteCulVoiceMessages {
  static const Map<String, String> messages = {
    'greeting_morning': 'おはようございます。今日の予定をお知らせします。',
    'greeting_afternoon': 'お疲れさまです。午後の予定を確認しましょう。',
    'greeting_evening': 'お疲れさまでした。明日の準備はいかがですか？',
    'reminder_urgent': '重要なリマインダーがあります。ご確認をお願いします。',
    'reminder_normal': 'リマインダーをお知らせします。',
    'task_completed': 'タスクが完了しました。お疲れさまでした。',
    'encouragement': '頑張っていますね。体調にも気をつけてください。',
    'break_time': '少し休憩しませんか？リフレッシュは大切です。',
  };

  static String getRandomEncouragement() {
    final encouragements = [
      '今日もお疲れさまです。',
      'しっかりと休息を取ってくださいね。',
      '無理は禁物ですよ。',
      '着実に進歩していますね。',
    ];
    return encouragements[DateTime.now().microsecond % encouragements.length];
  }
}
