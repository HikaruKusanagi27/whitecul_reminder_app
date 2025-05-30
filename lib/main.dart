import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:speech_balloon/speech_balloon.dart';
import 'models/reminder.dart';
import 'providers/reminder_provider.dart';
import 'screens/calendar_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase初期化処理
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: WhiteCULReminderApp()));
}

class WhiteCULReminderApp extends StatelessWidget {
  const WhiteCULReminderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhiteCUL Reminder',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ja', 'JP'), Locale('en', 'US')],
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF7B68EE), // WhiteCULテーマ色（薄紫）
          secondary: Color(0xFFB0C4DE), // 雪をイメージした青白色
          surface: Color(0xFFF8F8FF), // ゴーストホワイト
          onPrimary: Colors.white,
          onSecondary: Color(0xFF2C2C54),
          onSurface: Color(0xFF2C2C54),
        ),
        textTheme: GoogleFonts.notoSansJpTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        cardTheme: const CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF9370DB), // ダークテーマでの薄紫
          secondary: Color(0xFF4682B4), // スチールブルー
          surface: Color(0xFF1E1E2E),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
        ),
        textTheme: GoogleFonts.notoSansJpTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // アプリ起動時に通知サービスを初期化
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeNotificationService();
    });
  }

  /// 通知サービスを初期化
  Future<void> _initializeNotificationService() async {
    try {
      final notificationService = ref.read(notificationServiceProvider);
      final initialized = await notificationService.initialize();

      if (initialized) {
        // 通知サービスをリマインダー管理に設定
        ref.read(reminderListProvider.notifier).initialize(notificationService);
        print('✅ 通知サービス初期化完了');
      } else {
        print('❌ 通知サービス初期化失敗');
      }
    } catch (e) {
      print('❌ 通知サービス初期化エラー: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final todayReminders = ref.watch(todayRemindersProvider);

    return Scaffold(
      body: Container(
        color: Colors.cyanAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // WhiteCULの画像を表示
              SpeechBalloon(
                borderColor: Colors.black,
                height: 60, // マルなので同じheightとwidth
                width: 300,
                borderRadius: 20,
                offset: Offset(40, -1), // 棘の位置がずれてしまったのでoffsetで位置を修正してあげる
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      todayReminders.isNotEmpty
                          ? '今日のリマインダーは ${todayReminders.length}件だよ〜'
                          : '今日も素敵だね！',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // 画像を下に移動するためのスペーサー
              Image.asset(
                'assets/images/通常.png',
                errorBuilder: (context, error, stackTrace) {
                  // 画像読み込みエラー時のプレースホルダー
                  return Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.lightBlue, Color(0xFFB0C4DE)],
                      ),
                    ),
                  );
                },
              ),

              // 画面下部に少し余白を追加
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent.shade100,
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CalendarScreen()),
          );
        },
        child: const Icon(Icons.calendar_today),
      ),
    );
  }

  /// 通知設定ダイアログを表示
  void _showNotificationSettingsDialog() async {
    final notificationService = ref.read(notificationServiceProvider);
    final pendingNotifications =
        await notificationService.getPendingNotifications();
    final hasPermission =
        await notificationService.checkNotificationPermissions();

    if (!mounted) return;

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('🔔 通知設定状況'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('スケジュール済み通知: ${pendingNotifications.length}件'),
                const SizedBox(height: 8),
                Text(
                  '通知権限: ${hasPermission ? "✅ 有効" : "❌ 無効"}',
                  style: TextStyle(
                    color: hasPermission ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('通知をタップすると音声が再生されます'),
                if (!hasPermission) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.orange.shade200),
                    ),
                    child: const Text(
                      '⚠️ 通知権限が無効です。設定アプリで権限を有効にしてください。',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ],
            ),
            actions: [
              if (!hasPermission)
                TextButton(
                  onPressed: () async {
                    Navigator.of(context).pop();
                    await notificationService.initialize(); // 権限を再リクエスト
                  },
                  child: const Text('権限をリクエスト'),
                ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('閉じる'),
              ),
            ],
          ),
    );
  }

  /// テスト通知を送信
  Future<void> _testNotification() async {
    try {
      final notificationService = ref.read(notificationServiceProvider);

      // 5秒後にテスト通知を送信
      final testReminder = Reminder(
        id: 'test_${DateTime.now().millisecondsSinceEpoch}',
        title: 'テスト通知',
        message: 'これはテスト通知です。WhiteCULの音声をお聞きください！',
        dateTime: DateTime.now().add(const Duration(seconds: 5)),
        voiceType: 'normal',
        createdAt: DateTime.now(),
      );

      final success = await notificationService.scheduleReminder(testReminder);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success ? '✅ 5秒後にテスト通知が送信されます！' : '❌ テスト通知の送信に失敗しました',
            ),
            backgroundColor: success ? Colors.green : Colors.red,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('❌ エラー: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  /// 即座通知+音声テストを送信
  Future<void> _testImmediateNotification() async {
    try {
      final notificationService = ref.read(notificationServiceProvider);

      final success = await notificationService.showImmediateNotification(
        '🤍 WhiteCULテスト通知',
        'これは即座通知テストです。WhiteCULの音声をお聞きください！',
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success
                  ? '✅ 即座通知が送信されました！音声も再生中です'
                  : '❌ 即座通知の送信に失敗しました。権限を確認してください',
            ),
            backgroundColor: success ? Colors.green : Colors.red,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('❌ エラー: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}
