import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../models/reminder.dart';
import '../providers/reminder_provider.dart';

class AddReminderScreen extends ConsumerStatefulWidget {
  final DateTime? initialDate;

  const AddReminderScreen({super.key, this.initialDate});

  @override
  ConsumerState<AddReminderScreen> createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends ConsumerState<AddReminderScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _messageController = TextEditingController();

  late DateTime _selectedDate;
  TimeOfDay _selectedTime = TimeOfDay.now();
  WhiteCulVoiceType _selectedVoiceType = WhiteCulVoiceType.normal;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate ?? DateTime.now();

    // デフォルトメッセージを設定
    _messageController.text = 'リマインダーの時間です！';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📝 リマインダー追加'),
        backgroundColor: const Color(0xFF7B68EE),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: _isLoading ? null : _saveReminder,
            icon:
                _isLoading
                    ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                    : const Icon(Icons.save),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // タイトル入力
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📌 タイトル',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        hintText: '例: 薬を飲む、会議の準備',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.title),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'タイトルを入力してください';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // メッセージ入力
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '💬 WhiteCULからのメッセージ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _messageController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        hintText: 'WhiteCULが教えてくれるメッセージ',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.message),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'メッセージを入力してください';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 日付選択
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📅 日付',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.calendar_today),
                      title: Text(
                        DateFormat(
                          'yyyy年M月d日 (E)',
                          'ja_JP',
                        ).format(_selectedDate),
                        style: const TextStyle(fontSize: 16),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: _selectDate,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 時刻選択
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '⏰ 時刻',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.access_time),
                      title: Text(
                        _selectedTime.format(context),
                        style: const TextStyle(fontSize: 16),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: _selectTime,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 音声タイプ選択
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🎵 WhiteCUL音声タイプ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B68EE),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...WhiteCulVoiceType.values.map((voiceType) {
                      return RadioListTile<WhiteCulVoiceType>(
                        title: Text(
                          '${voiceType.displayName} (${voiceType.value})',
                        ),
                        value: voiceType,
                        groupValue: _selectedVoiceType,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              _selectedVoiceType = value;
                            });
                          }
                        },
                        activeColor: const Color(0xFF7B68EE),
                      );
                    }),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 保存ボタン
            ElevatedButton.icon(
              onPressed: _isLoading ? null : _saveReminder,
              icon: const Icon(Icons.notifications_active),
              label: const Text(
                'リマインダーを設定',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7B68EE),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 注意書き
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info, color: Colors.orange.shade600),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '設定した時刻になると通知が表示され、WhiteCULの音声でお知らせします。アプリがバックグラウンドにある場合も動作します。',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.orange.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 日付選択
  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      locale: const Locale('ja', 'JP'),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  /// 時刻選択
  Future<void> _selectTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  /// リマインダーを保存
  Future<void> _saveReminder() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      print('📝 リマインダー保存開始');

      // 日付と時刻を組み合わせ
      final reminderDateTime = DateTime(
        _selectedDate.year,
        _selectedDate.month,
        _selectedDate.day,
        _selectedTime.hour,
        _selectedTime.minute,
      );

      print('📅 設定日時: $reminderDateTime');
      print('🕐 現在時刻: ${DateTime.now()}');

      // 過去の時刻チェック
      if (reminderDateTime.isBefore(DateTime.now())) {
        print('❌ 過去の時刻が設定されています');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('過去の時刻は設定できません'),
              backgroundColor: Colors.red,
            ),
          );
        }
        return;
      }

      // リマインダーオブジェクト作成
      final reminder = Reminder(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text.trim(),
        message: _messageController.text.trim(),
        dateTime: reminderDateTime,
        voiceType: _selectedVoiceType.value,
        createdAt: DateTime.now(),
      );

      print('📋 リマインダー作成完了: ${reminder.id}');
      print('🏷️ タイトル: ${reminder.title}');
      print('💬 メッセージ: ${reminder.message}');
      print('🎵 音声タイプ: ${reminder.voiceType}');

      // 通知サービスを取得・初期化
      print('🔔 通知サービス取得中...');
      final notificationService = ref.read(notificationServiceProvider);

      print('🔧 リマインダーNotifier初期化中...');
      ref.read(reminderListProvider.notifier).initialize(notificationService);

      // 通知サービスが初期化されているか確認
      print('📱 通知サービス初期化確認中...');
      final serviceInitialized = await notificationService.initialize();
      if (!serviceInitialized) {
        throw Exception('通知サービスの初期化に失敗しました');
      }

      // 通知権限を確認
      print('🔐 通知権限確認中...');
      final hasPermission =
          await notificationService.checkNotificationPermissions();
      if (!hasPermission) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('❌ 通知権限がありません。設定アプリで権限を有効にしてください。'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 4),
            ),
          );
        }
        return;
      }

      // リマインダーを追加
      print('➕ リマインダー追加処理開始...');
      final success = await ref
          .read(reminderListProvider.notifier)
          .addReminder(reminder);

      print('✅ リマインダー追加結果: $success');

      if (mounted) {
        if (success) {
          print('🎉 リマインダー設定成功');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '🎉 リマインダーを設定しました！\n${reminder.title} - ${DateFormat('M月d日 HH:mm').format(reminder.dateTime)}',
              ),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 3),
            ),
          );
          Navigator.of(context).pop();
        } else {
          print('❌ リマインダー設定失敗');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('❌ リマインダーの設定に失敗しました。通知権限や時刻設定を確認してください。'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 4),
            ),
          );
        }
      }
    } catch (e, stackTrace) {
      print('❌ リマインダー保存中にエラーが発生しました: $e');
      print('📊 スタックトレース: $stackTrace');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('エラーが発生しました: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
