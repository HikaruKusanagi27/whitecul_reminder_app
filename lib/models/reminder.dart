import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
class Reminder with _$Reminder {
  const factory Reminder({
    required String id,
    required String title,
    required String message,
    required DateTime dateTime,
    @Default(true) bool isActive,
    @Default('normal') String voiceType, // 'normal', 'happy', 'sad', 'crying'
    DateTime? createdAt,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}

// WhiteCUL音声タイプ
enum WhiteCulVoiceType {
  normal('normal', 'ノーマル'),
  happy('happy', '喜び'),
  sad('sad', '悲しみ'),
  crying('crying', '泣き');

  const WhiteCulVoiceType(this.value, this.displayName);
  final String value;
  final String displayName;
}
