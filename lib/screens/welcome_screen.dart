
import 'package:flutter/material.dart';
import '../pages/profile_setup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Health Coach'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) => const ProfileSetup(),
                  ),
                );
              },

              child: const Text('Create Profile'),
            ),
          ],
        ),
      ),
    );
  }
}