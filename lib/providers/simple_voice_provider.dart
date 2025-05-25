import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/simple_voice_service.dart';

// シンプルなWhiteCUL音声サービスのプロバイダー
final simpleWhiteCulVoiceServiceProvider = Provider<SimpleWhiteCulVoiceService>(
  (ref) {
    final service = SimpleWhiteCulVoiceService();
    ref.onDispose(() => service.dispose());
    return service;
  },
);

// 音声再生状態の管理
final simpleVoicePlaybackStateProvider =
    StateProvider<SimpleVoicePlaybackState>((ref) {
      return SimpleVoicePlaybackState.idle;
    });

// WhiteCUL音声再生機能
final simpleWhiteCulPlayProvider = Provider<Future<bool> Function()>((ref) {
  return () async {
    final service = ref.read(simpleWhiteCulVoiceServiceProvider);

    // 再生状態を更新
    ref.read(simpleVoicePlaybackStateProvider.notifier).state =
        SimpleVoicePlaybackState.playing;

    try {
      final success = await service.playWhiteCulNormal();

      ref.read(simpleVoicePlaybackStateProvider.notifier).state =
          success
              ? SimpleVoicePlaybackState.completed
              : SimpleVoicePlaybackState.error;

      return success;
    } catch (e) {
      ref.read(simpleVoicePlaybackStateProvider.notifier).state =
          SimpleVoicePlaybackState.error;
      return false;
    }
  };
});

// 定型メッセージ再生
final simplePresetMessagePlayProvider = Provider<Future<bool> Function(String)>(
  (ref) {
    return (String messageType) async {
      final service = ref.read(simpleWhiteCulVoiceServiceProvider);

      // 再生状態を更新
      ref.read(simpleVoicePlaybackStateProvider.notifier).state =
          SimpleVoicePlaybackState.playing;

      try {
        final success = await service.playPresetMessage(messageType);

        ref.read(simpleVoicePlaybackStateProvider.notifier).state =
            success
                ? SimpleVoicePlaybackState.completed
                : SimpleVoicePlaybackState.error;

        return success;
      } catch (e) {
        ref.read(simpleVoicePlaybackStateProvider.notifier).state =
            SimpleVoicePlaybackState.error;
        return false;
      }
    };
  },
);

enum SimpleVoicePlaybackState { idle, playing, completed, error }
