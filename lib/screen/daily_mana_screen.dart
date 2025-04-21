import 'package:flutter/material.dart';

class DailyManaScreen extends StatelessWidget {
  const DailyManaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Mana'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/DAILY MANA.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            const SizedBox(height: 20),
            const Text(
              '“Your word is a lamp to my feet and a light to my path.”\n\nToday’s Word:\nStay strong in faith and remember God walks with you even in your darkest hour.',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                // Add share or read more functionality
              },
              icon: const Icon(Icons.share),
              label: const Text("Share Daily Mana"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
