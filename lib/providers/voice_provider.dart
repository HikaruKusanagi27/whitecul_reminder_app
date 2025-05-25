import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/voicevox_service.dart';
import '../models/whitecul_voice.dart';

// VoicevoxServiceのプロバイダー
final voicevoxServiceProvider = Provider<VoicevoxService>((ref) {
  final service = VoicevoxService();
  ref.onDispose(() => service.dispose());
  return service;
});

// 音声設定のプロバイダー
final voiceSettingsProvider = StateProvider<VoiceSettings>((ref) {
  return const VoiceSettings(); // デフォルト設定
});

// VOICEVOX Engineの利用可能状態
final voicevoxAvailabilityProvider = FutureProvider<bool>((ref) async {
  final service = ref.read(voicevoxServiceProvider);
  return await service.isVoicevoxEngineAvailable();
});

// 音声再生状態の管理
final voicePlaybackStateProvider = StateProvider<VoicePlaybackState>((ref) {
  return VoicePlaybackState.idle;
});

// WhiteCUL音声での読み上げ機能
final whiteCulSpeakProvider = Provider<Future<bool> Function(String)>((ref) {
  return (String text) async {
    final service = ref.read(voicevoxServiceProvider);
    final settings = ref.read(voiceSettingsProvider);

    // 再生状態を更新
    ref.read(voicePlaybackStateProvider.notifier).state =
        VoicePlaybackState.playing;

    try {
      final success = await service.speakWithWhiteCul(
        text,
        speed: settings.speed,
        pitch: settings.pitch,
      );

      ref.read(voicePlaybackStateProvider.notifier).state =
          success ? VoicePlaybackState.completed : VoicePlaybackState.error;

      return success;
    } catch (e) {
      ref.read(voicePlaybackStateProvider.notifier).state =
          VoicePlaybackState.error;
      return false;
    }
  };
});

// 定型メッセージ読み上げ
final speakPresetMessageProvider = Provider<Future<bool> Function(String)>((
  ref,
) {
  return (String messageKey) async {
    final message = WhiteCulVoiceMessages.messages[messageKey];
    if (message == null) return false;

    final speakFunction = ref.read(whiteCulSpeakProvider);
    return await speakFunction(message);
  };
});

// WhiteCULスタイル別音声再生
final whiteCulStyleSpeakProvider =
    Provider<Future<bool> Function(String, WhiteCulStyle)>((ref) {
      return (String text, WhiteCulStyle style) async {
        final service = ref.read(voicevoxServiceProvider);
        final settings = ref.read(voiceSettingsProvider);

        // 再生状態を更新
        ref.read(voicePlaybackStateProvider.notifier).state =
            VoicePlaybackState.playing;

        try {
          final success = await service.speakWithWhiteCulStyle(
            text,
            style,
            speed: settings.speed,
            pitch: settings.pitch,
          );

          ref.read(voicePlaybackStateProvider.notifier).state =
              success ? VoicePlaybackState.completed : VoicePlaybackState.error;

          return success;
        } catch (e) {
          ref.read(voicePlaybackStateProvider.notifier).state =
              VoicePlaybackState.error;
          return false;
        }
      };
    });

enum VoicePlaybackState { idle, playing, completed, error }
