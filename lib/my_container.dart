import 'package:flutter/material.dart';

import 'package:quiz_app/styled_text.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  void handlePress() {
    print('in handlePress');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(height: 40),
            const StyledText('Learn Flutter the fun way!'),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: handlePress,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
