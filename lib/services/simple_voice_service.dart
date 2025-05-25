import 'package:audioplayers/audioplayers.dart';

/// シンプルなWhiteCUL音声再生サービス
class SimpleWhiteCulVoiceService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  /// WhiteCULノーマル音声を再生
  Future<bool> playWhiteCulNormal() async {
    try {
      print('=== WhiteCUL音声再生開始 ===');
      print('ファイル: 001_whitecul_normal.wav');
      print('パス: audio/whitecul/001_whitecul_normal.wav');

      // 001_whitecul_normal.wavファイルを再生
      await _audioPlayer.play(
        AssetSource('audio/whitecul/001_whitecul_normal.wav'),
      );

      print('WhiteCUL音声再生成功');
      return true;
    } catch (e) {
      print('WhiteCUL音声再生エラー (wav): $e');

      // mp3形式で再試行
      try {
        print('mp3で再試行中...');
        await _audioPlayer.play(
          AssetSource('audio/whitecul/001_whitecul_normal.mp3'),
        );
        print('WhiteCUL音声再生成功 (mp3)');
        return true;
      } catch (e2) {
        print('WhiteCUL音声再生エラー (mp3): $e2');

        // ファイルが存在しない可能性を明示
        print('音声ファイルが見つかりません。以下を確認してください:');
        print('1. assets/audio/whitecul/001_whitecul_normal.wav が存在するか');
        print('2. pubspec.yamlでアセットが正しく設定されているか');
        print('3. flutter pub get を実行したか');

        return false;
      }
    }
  }

  /// 定型メッセージ音声再生（将来の拡張用）
  Future<bool> playPresetMessage(String messageType) async {
    switch (messageType) {
      case 'normal':
        return await playWhiteCulNormal();
      default:
        print('未対応のメッセージタイプ: $messageType');
        return false;
    }
  }

  /// 音声再生を停止
  Future<void> stop() async {
    await _audioPlayer.stop();
  }

  /// リソースをクリーンアップ
  void dispose() {
    _audioPlayer.dispose();
  }
}

/// WhiteCULメッセージ定型文（将来の拡張用）
class SimpleWhiteCulMessages {
  static const Map<String, String> messages = {
    'normal': 'WhiteCULのノーマル音声です',
    'greeting': 'こんにちは、WhiteCULです',
    'reminder': 'リマインダーをお知らせします',
  };
}
