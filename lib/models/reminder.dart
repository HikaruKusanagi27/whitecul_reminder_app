import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
class Reminder with _$Reminder {
  const factory Reminder({
    required int id,
    required String title,
    required String description,
    required DateTime dateTime,
    required bool isCompleted,
    required bool isNotificationEnabled,
    required ReminderPriority priority,
    required ReminderCategory category,
    @Default([]) List<String> voiceMessages,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}

@freezed
class ReminderPriority with _$ReminderPriority {
  const factory ReminderPriority.low() = _Low;
  const factory ReminderPriority.medium() = _Medium;
  const factory ReminderPriority.high() = _High;
  const factory ReminderPriority.urgent() = _Urgent;
}

@freezed
class ReminderCategory with _$ReminderCategory {
  const factory ReminderCategory.work() = _Work;
  const factory ReminderCategory.personal() = _Personal;
  const factory ReminderCategory.health() = _Health;
  const factory ReminderCategory.study() = _Study;
  const factory ReminderCategory.shopping() = _Shopping;
  const factory ReminderCategory.other(String customName) = _Other;
}
