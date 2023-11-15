import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(this.summaryRow, {super.key});

  final Map<String, Object> summaryRow;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryRow['user_answer'] == summaryRow['correct_answer'];

    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 28, 191, 191)
            : const Color.fromARGB(255, 188, 28, 191),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          ((summaryRow['question_index'] as int) + 1).toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
