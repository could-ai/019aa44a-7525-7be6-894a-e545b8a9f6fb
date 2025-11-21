import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ModulesHubScreen extends StatelessWidget {
  const ModulesHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulos'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildModuleCard(
            context,
            'Produtividade',
            'Tarefas, Agenda',
            LucideIcons.checkSquare,
            Colors.orange,
          ),
          _buildModuleCard(
            context,
            'Saúde & Bem-estar',
            'Sono, Água, Treino',
            LucideIcons.heart,
            Colors.red,
          ),
          _buildModuleCard(
            context,
            'Finanças',
            'Orçamento, Gastos',
            LucideIcons.dollarSign,
            Colors.green,
          ),
          _buildModuleCard(
            context,
            'Trabalho & Estudo',
            'Resumos, Projetos',
            LucideIcons.briefcase,
            Colors.blue,
          ),
          _buildModuleCard(
            context,
            'Criatividade',
            'Ideias, Escrita',
            LucideIcons.lightbulb,
            Colors.purple,
          ),
          _buildModuleCard(
            context,
            'Viagens',
            'Roteiros, Malas',
            LucideIcons.plane,
            Colors.teal,
          ),
        ],
      ),
    );
  }

  Widget _buildModuleCard(BuildContext context, String title, String subtitle, IconData icon, Color color) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 32),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
