import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/reminder.dart';
import '../services/notification_service.dart';

/// リマインダーリストのプロバイダー
final reminderListProvider =
    StateNotifierProvider<ReminderNotifier, List<Reminder>>((ref) {
      return ReminderNotifier();
    });

/// 通知サービスのプロバイダー
final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

/// リマインダー管理クラス
class ReminderNotifier extends StateNotifier<List<Reminder>> {
  ReminderNotifier() : super([]);

  NotificationService? _notificationService;

  /// 初期化
  void initialize(NotificationService notificationService) {
    try {
      print('🔧 ReminderNotifier: 初期化開始');
      if (notificationService == null) {
        print('❌ NotificationServiceがnullです');
        return;
      }

      _notificationService = notificationService;
      _notificationService!.initialize();
      print('✅ ReminderNotifier: 初期化完了');
    } catch (e) {
      print('❌ ReminderNotifier: 初期化エラー: $e');
    }
  }

  /// リマインダーを追加
  Future<bool> addReminder(Reminder reminder) async {
    try {
      print('🔄 ReminderNotifier: リマインダー追加開始');
      print('📋 追加するリマインダー: ${reminder.title}');

      // 通知サービスが初期化されているかチェック
      if (_notificationService == null) {
        print('❌ NotificationServiceが初期化されていません');
        return false;
      }

      // 通知をスケジュール
      print('📅 通知スケジュール実行中...');
      final scheduled = await _notificationService!.scheduleReminder(reminder);

      if (scheduled) {
        // 状態を更新
        print('✅ 通知スケジュール成功、状態更新中...');
        state = [...state, reminder];
        print('✅ リマインダー追加成功: ${reminder.title}');
        print('📊 現在のリマインダー数: ${state.length}');
        return true;
      } else {
        print('❌ リマインダー通知スケジュール失敗');
        return false;
      }
    } catch (e, stackTrace) {
      print('❌ ReminderNotifier: リマインダー追加エラー: $e');
      print('📊 スタックトレース: $stackTrace');
      return false;
    }
  }

  /// リマインダーを削除
  Future<void> removeReminder(String reminderId) async {
    try {
      if (_notificationService == null) {
        print('❌ NotificationServiceが初期化されていません');
        return;
      }

      // 通知をキャンセル
      await _notificationService!.cancelReminder(reminderId);

      // 状態を更新
      state = state.where((reminder) => reminder.id != reminderId).toList();
      print('🗑️ リマインダー削除: $reminderId');
    } catch (e) {
      print('❌ リマインダー削除エラー: $e');
    }
  }

  /// リマインダーの有効/無効を切り替え
  Future<void> toggleReminder(String reminderId) async {
    try {
      if (_notificationService == null) {
        print('❌ NotificationServiceが初期化されていません');
        return;
      }

      final updatedList =
          state.map((reminder) {
            if (reminder.id == reminderId) {
              final updated = reminder.copyWith(isActive: !reminder.isActive);

              // 無効にする場合は通知をキャンセル
              if (!updated.isActive) {
                _notificationService!.cancelReminder(reminderId);
              } else {
                // 有効にする場合は通知を再スケジュール
                _notificationService!.scheduleReminder(updated);
              }

              return updated;
            }
            return reminder;
          }).toList();

      state = updatedList;
      print('🔄 リマインダー状態切り替え: $reminderId');
    } catch (e) {
      print('❌ リマインダー状態切り替えエラー: $e');
    }
  }

  /// 特定の日付のリマインダーを取得
  List<Reminder> getRemindersForDate(DateTime date) {
    return state.where((reminder) {
      final reminderDate = DateTime(
        reminder.dateTime.year,
        reminder.dateTime.month,
        reminder.dateTime.day,
      );
      final targetDate = DateTime(date.year, date.month, date.day);
      return reminderDate.isAtSameMomentAs(targetDate) && reminder.isActive;
    }).toList();
  }

  /// 今日のリマインダーを取得
  List<Reminder> getTodayReminders() {
    return getRemindersForDate(DateTime.now());
  }

  /// 期限切れのリマインダーを削除
  void cleanupExpiredReminders() {
    final now = DateTime.now();
    final activeReminders =
        state.where((reminder) {
          return reminder.dateTime.isAfter(now) || reminder.isActive;
        }).toList();

    if (activeReminders.length != state.length) {
      state = activeReminders;
      print('🧹 期限切れリマインダーをクリーンアップ');
    }
  }
}

/// 選択された日付のリマインダーを取得するプロバイダー
final selectedDateRemindersProvider = Provider.family<List<Reminder>, DateTime>(
  (ref, date) {
    final reminders = ref.watch(reminderListProvider);
    return ref.read(reminderListProvider.notifier).getRemindersForDate(date);
  },
);

/// 今日のリマインダーを取得するプロバイダー
final todayRemindersProvider = Provider<List<Reminder>>((ref) {
  final reminders = ref.watch(reminderListProvider);
  return ref.read(reminderListProvider.notifier).getTodayReminders();
});
