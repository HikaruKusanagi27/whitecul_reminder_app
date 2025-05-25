// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whitecul_voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoiceSettingsImpl _$$VoiceSettingsImplFromJson(Map<String, dynamic> json) =>
    _$VoiceSettingsImpl(
      speed: (json['speed'] as num?)?.toDouble() ?? 1.0,
      pitch: (json['pitch'] as num?)?.toDouble() ?? 1.0,
      volume: (json['volume'] as num?)?.toDouble() ?? 1.0,
      speakerId: (json['speakerId'] as num?)?.toInt() ?? 50,
      isEnabled: json['isEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$VoiceSettingsImplToJson(_$VoiceSettingsImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'pitch': instance.pitch,
      'volume': instance.volume,
      'speakerId': instance.speakerId,
      'isEnabled': instance.isEnabled,
    };

_$VoiceMessageImpl _$$VoiceMessageImplFromJson(Map<String, dynamic> json) =>
    _$VoiceMessageImpl(
      text: json['text'] as String,
      type: $enumDecode(_$VoiceMessageTypeEnumMap, json['type']),
      audioFilePath: json['audioFilePath'] as String? ?? '',
      generatedAt: json['generatedAt'] == null
          ? null
          : DateTime.parse(json['generatedAt'] as String),
    );

Map<String, dynamic> _$$VoiceMessageImplToJson(_$VoiceMessageImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': _$VoiceMessageTypeEnumMap[instance.type]!,
      'audioFilePath': instance.audioFilePath,
      'generatedAt': instance.generatedAt?.toIso8601String(),
    };

const _$VoiceMessageTypeEnumMap = {
  VoiceMessageType.reminder: 'reminder',
  VoiceMessageType.greeting: 'greeting',
  VoiceMessageType.completion: 'completion',
  VoiceMessageType.custom: 'custom',
};
