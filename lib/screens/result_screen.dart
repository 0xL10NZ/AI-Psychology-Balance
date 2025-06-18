import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  int _calculateScore(List<int> answers) {
    return answers.fold(0, (sum, item) => sum + item);
  }

  String _getMessage(int score) {
    if (score <= 10) return "Твій стан потребує уваги.";
    if (score <= 17) return "Стан середній. Потрібна підтримка.";
    return "Все чудово! Ти тримаєш баланс.";
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as List<int>? ?? [];

    final score = _calculateScore(args);
    final message = _getMessage(score);

    return Scaffold(
      backgroundColor: const Color(0xFFEFF4FA),
      appBar: AppBar(
        title: const Text("Результат"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Text(
              'Твій результат:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                minimumSize: const Size(double.infinity, 48),
              ),
                child: const Text(
                "Консультація з AI психологом",
                 style: TextStyle(color: Colors.white), // 👈 ЯВНО УКАЗЫВАЕМ
                ),

              ),
          ],
        ),
      ),
    );
  }
}
