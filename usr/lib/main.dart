import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/dashboard/main_dashboard.dart';

void main() {
  runApp(const VidaPlusApp());
}

class VidaPlusApp extends StatelessWidget {
  const VidaPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vida+ IA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // Ensure routing is safe for web previews
      initialRoute: '/',
      routes: {
        '/': (context) => const MainDashboard(),
      },
    );
  }
}
