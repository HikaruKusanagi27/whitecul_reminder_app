import 'package:freezed_annotation/freezed_annotation.dart';

part 'whitecul_voice.freezed.dart';
// part 'whitecul_voice.g.dart'; // TODO: enum serialization修正後に有効化

@freezed
class VoiceSettings with _$VoiceSettings {
  const factory VoiceSettings({
    @Default(1.0) double speed,
    @Default(1.0) double pitch,
    @Default(1.0) double volume,
    @Default(50) int speakerId, // WhiteCULのspeaker_id
    @Default(true) bool isEnabled,
  }) = _VoiceSettings;
}

@freezed
class VoiceMessage with _$VoiceMessage {
  const factory VoiceMessage({
    required String text,
    required VoiceMessageType type,
    @Default('') String audioFilePath,
    DateTime? generatedAt,
  }) = _VoiceMessage;
}

@freezed
class VoiceMessageType with _$VoiceMessageType {
  const factory VoiceMessageType.reminder() = _ReminderMessage;
  const factory VoiceMessageType.greeting() = _GreetingMessage;
  const factory VoiceMessageType.completion() = _CompletionMessage;
  const factory VoiceMessageType.custom(String customType) = _CustomMessage;
}
