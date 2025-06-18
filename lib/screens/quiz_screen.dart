import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  final List<String> questions = [
    "Як ти почуваєшся сьогодні?",
    "Чи маєш мотивацію діяти зараз?",
    "Чи є внутрішній спокій?",
    "Як ти спав минулої ночі?",
    "Чи відчуваєш підтримку?"
  ];

  final List<int> answers = [];

  void _selectAnswer(int value) {
    answers.add(value);
    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      Navigator.pushNamed(context, '/result', arguments: answers);
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFEFF4FA),
      appBar: AppBar(
        title: const Text("Опитування"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Питання ${currentIndex + 1} з ${questions.length}",
              style: const TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(5, (index) {
                final emoji = ['😡', '😕', '😐', '🙂', '😄'][index];
                return IconButton(
                  onPressed: () => _selectAnswer(index + 1),
                  icon: Text(
                    emoji,
                    style: const TextStyle(fontSize: 32),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
