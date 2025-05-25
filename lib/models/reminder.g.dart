// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderImpl _$$ReminderImplFromJson(Map<String, dynamic> json) =>
    _$ReminderImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      isActive: json['isActive'] as bool? ?? true,
      voiceType: json['voiceType'] as String? ?? 'normal',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReminderImplToJson(_$ReminderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'dateTime': instance.dateTime.toIso8601String(),
      'isActive': instance.isActive,
      'voiceType': instance.voiceType,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
