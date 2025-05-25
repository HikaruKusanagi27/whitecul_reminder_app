import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import '../models/reminder.dart';
import '../providers/reminder_provider.dart';
import 'add_reminder_screen.dart';

// カレンダー状態管理用のプロバイダー
final selectedDayProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final focusedDayProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

class CalendarScreen extends ConsumerWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(selectedDayProvider);
    final focusedDay = ref.watch(focusedDayProvider);
    final selectedDayReminders = ref.watch(
      selectedDateRemindersProvider(selectedDay),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7B68EE),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // カレンダーウィジェット
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TableCalendar<Reminder>(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                ref.read(selectedDayProvider.notifier).state = selectedDay;
                ref.read(focusedDayProvider.notifier).state = focusedDay;
              },
              calendarFormat: CalendarFormat.month,
              // リマインダーがある日にマーカーを表示
              eventLoader: (day) {
                return ref
                    .read(reminderListProvider.notifier)
                    .getRemindersForDate(day);
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Color(0xFF7B68EE),
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Color(0xFF7B68EE),
                ),
                titleTextStyle: TextStyle(
                  color: Color(0xFF7B68EE),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              calendarStyle: CalendarStyle(
                // 今日の日付のスタイル
                todayDecoration: BoxDecoration(
                  color: const Color(0xFF7B68EE).withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                // 選択された日付のスタイル
                selectedDecoration: const BoxDecoration(
                  color: Color(0xFF7B68EE),
                  shape: BoxShape.circle,
                ),
                // リマインダーがある日のマーカー
                markerDecoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                markersMaxCount: 3,
                // 週末のスタイル
                weekendTextStyle: const TextStyle(color: Colors.red),
                // 他の月の日付のスタイル
                outsideDaysVisible: false,
              ),
              // 日本語の曜日ラベル
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: Color(0xFF2C2C54),
                  fontWeight: FontWeight.bold,
                ),
                weekendStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 選択された日付の情報表示
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF7B68EE).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFF7B68EE).withOpacity(0.3),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.calendar_today, color: Color(0xFF7B68EE)),
                const SizedBox(width: 8),
                Text(
                  '選択日: ${DateFormat('yyyy年M月d日 (E)', 'ja_JP').format(selectedDay)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C2C54),
                  ),
                ),
                const Spacer(),
                Text(
                  '${selectedDayReminders.length}件',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // リマインダー一覧
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📋 この日のリマインダー',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7B68EE),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child:
                        selectedDayReminders.isEmpty
                            ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.event_note,
                                    size: 48,
                                    color: Colors.grey.shade400,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'まだリマインダーがありません',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'リマインダーを追加してWhiteCULに\n教えてもらいましょう！',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                            : ListView.builder(
                              itemCount: selectedDayReminders.length,
                              itemBuilder: (context, index) {
                                final reminder = selectedDayReminders[index];
                                return Card(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          reminder.isActive
                                              ? const Color(0xFF7B68EE)
                                              : Colors.grey,
                                      child: Icon(
                                        Icons.notifications,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    title: Text(
                                      reminder.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration:
                                            reminder.isActive
                                                ? TextDecoration.none
                                                : TextDecoration.lineThrough,
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '⏰ ${DateFormat('HH:mm').format(reminder.dateTime)}',
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                          '💬 ${reminder.message}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: PopupMenuButton(
                                      itemBuilder:
                                          (context) => [
                                            PopupMenuItem(
                                              value: 'toggle',
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    reminder.isActive
                                                        ? Icons.pause
                                                        : Icons.play_arrow,
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    reminder.isActive
                                                        ? '無効化'
                                                        : '有効化',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const PopupMenuItem(
                                              value: 'delete',
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.delete,
                                                    color: Colors.red,
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text('削除'),
                                                ],
                                              ),
                                            ),
                                          ],
                                      onSelected: (value) {
                                        if (value == 'toggle') {
                                          ref
                                              .read(
                                                reminderListProvider.notifier,
                                              )
                                              .toggleReminder(reminder.id);
                                        } else if (value == 'delete') {
                                          ref
                                              .read(
                                                reminderListProvider.notifier,
                                              )
                                              .removeReminder(reminder.id);
                                        }
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddReminderScreen(initialDate: selectedDay),
            ),
          );
        },
        backgroundColor: const Color(0xFF7B68EE),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

// イベントクラス（互換性のため残す）
class Event {
  final String title;
  final DateTime dateTime;
  final String description;

  Event({
    required this.title,
    required this.dateTime,
    required this.description,
  });
}
