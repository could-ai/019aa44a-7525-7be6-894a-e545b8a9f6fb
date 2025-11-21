import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../home/home_screen.dart';
import '../chat/ai_assistant_screen.dart';
import '../modules/modules_hub_screen.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const AiAssistantScreen(),
    const ModulesHubScreen(),
    const Center(child: Text('Perfil & Configurações (Em Breve)')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        elevation: 2,
        destinations: const [
          NavigationDestination(
            icon: Icon(LucideIcons.layoutDashboard),
            label: 'Hoje',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.sparkles),
            selectedIcon: Icon(LucideIcons.sparkles, color: Color(0xFF00BFA5)),
            label: 'Assistente',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.grid),
            label: 'Módulos',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.user),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
