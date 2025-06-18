import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF4FA),
      appBar: AppBar(title: const Text("Premium доступ")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Переваги Premium:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text("✅ Безлімітний доступ до чату з AI"),
            const Text("✅ Детальні психологічні звіти"),
            const Text("✅ Пріоритетна підтримка"),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: реалізація покупки
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Покупка ще не реалізована.")),
                  );
                },
                child: const Text("Оформити Premium"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
