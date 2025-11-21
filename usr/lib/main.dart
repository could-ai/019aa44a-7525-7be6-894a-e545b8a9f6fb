import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/welcome/welcome_screen.dart';

void main() {
  runApp(const DigitalProductApp());
}

class DigitalProductApp extends StatelessWidget {
  const DigitalProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Product Creator',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const WelcomeScreen(),
    );
  }
}
