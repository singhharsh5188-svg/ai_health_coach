import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const AIHealthCoach());
}

class AIHealthCoach extends StatelessWidget {
  const AIHealthCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}