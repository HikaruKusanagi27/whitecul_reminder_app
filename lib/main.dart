import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'models/reminder.dart';
import 'providers/voice_provider.dart';
import 'providers/simple_voice_provider.dart';
import 'providers/reminder_provider.dart';
import 'screens/calendar_screen.dart';

void main() {
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
          backgroundColor: Color(0xFF7B68EE),
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
          backgroundColor: Color(0xFF7B68EE),
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
    final voiceState = ref.watch(voicePlaybackStateProvider);
    final voicevoxAvailability = ref.watch(voicevoxAvailabilityProvider);
    final todayReminders = ref.watch(todayRemindersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WhiteCUL Reminder'),
        actions: [
          // VOICEVOX Engine接続状態インジケーター
          voicevoxAvailability.when(
            data:
                (isAvailable) => Icon(
                  isAvailable ? Icons.mic : Icons.mic_off,
                  color: isAvailable ? Colors.green : Colors.red,
                ),
            loading:
                () => const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
            error: (_, __) => const Icon(Icons.error, color: Colors.red),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _showNotificationSettingsDialog();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WhiteCULリマインダーアプリ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // 今日のリマインダー数表示
            if (todayReminders.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF7B68EE).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF7B68EE).withOpacity(0.3),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.today, color: Color(0xFF7B68EE)),
                    const SizedBox(width: 8),
                    Text(
                      '今日のリマインダー: ${todayReminders.length}件',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 20),

            // 音声再生状態表示
            if (voiceState == VoicePlaybackState.playing)
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 10),
                  Text('WhiteCULが話しています...'),
                ],
              ),

            const SizedBox(height: 30),

            // 🎵 シンプルなWhiteCUL音声テスト
            const Text(
              '🎵 録音済みWhiteCUL音声',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () async {
                final playSimpleVoice = ref.read(simpleWhiteCulPlayProvider);
                final success = await playSimpleVoice();

                if (!context.mounted) return;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      success ? 'WhiteCUL音声再生成功！' : 'WhiteCUL音声再生失敗',
                    ),
                    backgroundColor: success ? Colors.green : Colors.red,
                  ),
                );
              },
              icon: const Icon(Icons.play_circle),
              label: const Text('001_WhiteCUL(ノーマル) 再生'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade100,
                foregroundColor: Colors.purple.shade800,
              ),
            ),

            const SizedBox(height: 30),

            // 📅 カレンダー機能
            const Text(
              '📅 カレンダー機能',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CalendarScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.calendar_today),
              label: const Text('カレンダーを開く'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7B68EE),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔔 通知テスト機能
            const Text(
              '🔔 通知テスト',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () async {
                await _testNotification();
              },
              icon: const Icon(Icons.notifications_active),
              label: const Text('テスト通知を送信'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade600,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () async {
                await _testImmediateNotification();
              },
              icon: const Icon(Icons.volume_up),
              label: const Text('即座通知+音声テスト'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade600,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CalendarScreen()),
          );
        },
        child: const Icon(Icons.add),
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
