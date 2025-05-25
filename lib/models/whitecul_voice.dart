import 'package:freezed_annotation/freezed_annotation.dart';

part 'whitecul_voice.freezed.dart';
part 'whitecul_voice.g.dart';

@freezed
class VoiceSettings with _$VoiceSettings {
  const factory VoiceSettings({
    @Default(1.0) double speed,
    @Default(1.0) double pitch,
    @Default(1.0) double volume,
    @Default(50) int speakerId, // WhiteCULのspeaker_id
    @Default(true) bool isEnabled,
  }) = _VoiceSettings;

  factory VoiceSettings.fromJson(Map<String, dynamic> json) =>
      _$VoiceSettingsFromJson(json);
}

@freezed
class VoiceMessage with _$VoiceMessage {
  const factory VoiceMessage({
    required String text,
    required VoiceMessageType type,
    @Default('') String audioFilePath,
    DateTime? generatedAt,
  }) = _VoiceMessage;

  factory VoiceMessage.fromJson(Map<String, dynamic> json) =>
      _$VoiceMessageFromJson(json);
}

enum VoiceMessageType { reminder, greeting, completion, custom }
