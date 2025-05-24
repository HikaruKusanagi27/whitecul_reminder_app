import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhiteCUL Reminder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // 設定画面に遷移
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'WhiteCULリマインダーアプリ\n開発中...',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // リマインダー追加画面に遷移
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
