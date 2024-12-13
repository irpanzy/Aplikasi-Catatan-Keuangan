import 'package:flutter/material.dart';
import 'screens/settings_screen.dart';
import 'screens/statistik_screen.dart';
import 'screens/input_screen.dart';
import 'screens/history_screen.dart';
import 'screens/home_screen.dart';
import 'screens/input_name_screen.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(const SaveMoneyApp());
}

// Global state untuk menyimpan transaksi
List<Map<String, dynamic>> globalTransactions = [];

class SaveMoneyApp extends StatelessWidget {
  const SaveMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Save Money',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroScreen(),
        '/input_name': (context) => InputNameScreen(),
        '/home': (context) => const HomeScreen(),
        '/history': (context) => const HistoryScreen(),
        '/input': (context) => const InputScreen(),
        '/statistik': (context) => const StatistikScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
