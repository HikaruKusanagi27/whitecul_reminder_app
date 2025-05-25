import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/services.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../models/reminder.dart';
import 'simple_voice_service.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  final SimpleWhiteCulVoiceService _voiceService = SimpleWhiteCulVoiceService();
  bool _isInitialized = false;

  /// 通知サービスを初期化
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // タイムゾーンデータを初期化
      tz.initializeTimeZones();
      tz.setLocalLocation(tz.getLocation('Asia/Tokyo'));

      // Android設定
      const androidInitialize = AndroidInitializationSettings(
        '@mipmap/ic_launcher',
      );

      // iOS設定
      const iosInitialize = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      const initializationSettings = InitializationSettings(
        android: androidInitialize,
        iOS: iosInitialize,
      );

      final initialized = await _notifications.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: _onNotificationTapped,
      );

      if (initialized == true) {
        _isInitialized = true;
        print('📱 通知サービス初期化成功');

        // 通知権限をリクエスト
        await _requestPermissions();
        return true;
      }

      print('❌ 通知サービス初期化失敗');
      return false;
    } catch (e) {
      print('❌ 通知サービス初期化エラー: $e');
      return false;
    }
  }

  /// 通知権限をリクエスト
  Future<void> _requestPermissions() async {
    try {
      final androidPlugin =
          _notifications
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      final iosPlugin =
          _notifications
              .resolvePlatformSpecificImplementation<
                IOSFlutterLocalNotificationsPlugin
              >();

      if (androidPlugin != null) {
        final granted = await androidPlugin.requestNotificationsPermission();
        print('📱 Android通知権限: ${granted == true ? "許可" : "拒否"}');
      }

      if (iosPlugin != null) {
        final granted = await iosPlugin.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
        print('�� iOS通知権限: ${granted == true ? "許可" : "拒否"}');
      }
    } catch (e) {
      print('❌ 通知権限リクエストエラー: $e');
    }
  }

  /// 通知権限の状況を確認
  Future<bool> checkNotificationPermissions() async {
    try {
      final androidPlugin =
          _notifications
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      if (androidPlugin != null) {
        final granted = await androidPlugin.areNotificationsEnabled();
        print('📱 Android通知権限状況: ${granted == true ? "有効" : "無効"}');
        return granted ?? false;
      }

      // iOSの場合は直接確認できないので、テスト通知で判定
      return true;
    } catch (e) {
      print('❌ 通知権限確認エラー: $e');
      return false;
    }
  }

  /// リマインダー通知をスケジュール
  Future<bool> scheduleReminder(Reminder reminder) async {
    try {
      print('🔔 通知スケジュール開始: ${reminder.title}');

      if (!_isInitialized) {
        print('⚠️ 通知サービス未初期化、初期化中...');
        final initialized = await initialize();
        if (!initialized) {
          print('❌ 通知サービス初期化失敗');
          return false;
        }
      }

      // 通知権限を確認
      final hasPermission = await checkNotificationPermissions();
      if (!hasPermission) {
        print('❌ 通知権限がありません');
        return false;
      }

      // 過去の時刻チェック（即座通知の場合は1秒の猶予を与える）
      final now = DateTime.now();
      final allowedTime = now.subtract(const Duration(seconds: 1));

      if (reminder.dateTime.isBefore(allowedTime)) {
        print('❌ 過去の時刻のリマインダーはスケジュールできません: ${reminder.dateTime} < $now');
        return false;
      }

      const androidDetails = AndroidNotificationDetails(
        'whitecul_reminder',
        'WhiteCULリマインダー',
        channelDescription: 'WhiteCULがリマインダーをお知らせします',
        importance: Importance.high,
        priority: Priority.high,
        playSound: false, // 音声はWhiteCULで再生
        icon: '@mipmap/ic_launcher',
        enableLights: true,
        enableVibration: true,
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: false, // 音声はWhiteCULで再生
      );

      const notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      // 通知時刻をタイムゾーン付きで設定
      try {
        final scheduledTime = tz.TZDateTime.from(reminder.dateTime, tz.local);
        print(
          '📅 スケジュール時刻: $scheduledTime (現在: ${tz.TZDateTime.now(tz.local)})',
        );

        await _notifications.zonedSchedule(
          reminder.id.hashCode, // 通知ID
          '🤍 WhiteCULからのリマインダー',
          reminder.message,
          scheduledTime,
          notificationDetails,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
          payload: reminder.id, // リマインダーIDを渡す
        );

        print('✅ リマインダー通知をスケジュール: ${reminder.title} - ${reminder.dateTime}');
        return true;
      } catch (e) {
        print('❌ タイムゾーン処理エラー: $e');

        // フォールバック: 即座通知として実行
        if (reminder.dateTime.difference(now).inSeconds.abs() < 10) {
          print('🔄 即座通知にフォールバック');
          return await showImmediateNotification(
            '🤍 WhiteCULからのリマインダー',
            reminder.message,
          );
        }
        return false;
      }
    } catch (e) {
      print('❌ リマインダー通知スケジュールエラー: $e');
      return false;
    }
  }

  /// 通知がタップされた時の処理
  void _onNotificationTapped(NotificationResponse response) async {
    print('🔔 通知がタップされました: ${response.payload}');

    try {
      // WhiteCUL音声を再生
      final success = await _voiceService.playWhiteCulNormal();
      if (success) {
        print('🎵 WhiteCUL音声再生成功');
      } else {
        print('❌ WhiteCUL音声再生失敗');
      }
    } catch (e) {
      print('❌ 通知タップ時の音声再生エラー: $e');
    }
  }

  /// 即座にテスト通知を表示（デバッグ用）
  Future<bool> showImmediateNotification(String title, String message) async {
    try {
      print('🚀 即座通知実行開始');

      if (!_isInitialized) {
        print('⚠️ 通知サービス未初期化、初期化中...');
        final initialized = await initialize();
        if (!initialized) {
          print('❌ 通知サービス初期化失敗');
          return false;
        }
      }

      // 通知権限を確認
      final hasPermission = await checkNotificationPermissions();
      if (!hasPermission) {
        print('❌ 通知権限がありません');
        return false;
      }

      const androidDetails = AndroidNotificationDetails(
        'whitecul_test',
        'WhiteCULテスト通知',
        channelDescription: 'WhiteCULテスト用通知',
        importance: Importance.high,
        priority: Priority.high,
        playSound: false,
        icon: '@mipmap/ic_launcher',
        enableLights: true,
        enableVibration: true,
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: false,
      );

      const notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _notifications.show(
        999, // テスト通知ID
        title,
        message,
        notificationDetails,
        payload: 'test_notification',
      );

      print('✅ 即座にテスト通知を表示しました');

      // 音声を即座に再生
      await Future.delayed(const Duration(milliseconds: 500));
      final success = await _voiceService.playWhiteCulNormal();
      if (success) {
        print('🎵 音声再生成功（即座に実行）');
      } else {
        print('❌ 音声再生失敗（即座に実行）');
      }

      return true;
    } catch (e) {
      print('❌ 即座通知表示エラー: $e');
      return false;
    }
  }

  /// 特定のリマインダー通知をキャンセル
  Future<void> cancelReminder(String reminderId) async {
    try {
      await _notifications.cancel(reminderId.hashCode);
      print('🗑️ リマインダー通知をキャンセル: $reminderId');
    } catch (e) {
      print('❌ リマインダー通知キャンセルエラー: $e');
    }
  }

  /// 全ての通知をキャンセル
  Future<void> cancelAllReminders() async {
    try {
      await _notifications.cancelAll();
      print('🗑️ 全てのリマインダー通知をキャンセル');
    } catch (e) {
      print('❌ 全通知キャンセルエラー: $e');
    }
  }

  /// スケジュール済み通知の一覧を取得
  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    try {
      return await _notifications.pendingNotificationRequests();
    } catch (e) {
      print('❌ スケジュール済み通知取得エラー: $e');
      return [];
    }
  }

  /// 通知サービスをクリーンアップ
  void dispose() {
    _voiceService.dispose();
  }
}
