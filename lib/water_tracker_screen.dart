import 'package:flutter/material.dart';

class WaterTrackerScreen extends StatefulWidget {
  const WaterTrackerScreen({super.key});

  @override
  State<WaterTrackerScreen> createState() =>
      _WaterTrackerScreenState();
}

class _WaterTrackerScreenState
    extends State<WaterTrackerScreen> {

  double goal = 3.0;

  double current = 0.0;

  @override
  Widget build(BuildContext context) {

    double progress = current / goal;

    if (progress > 1) {
      progress = 1;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Water Tracker"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            const SizedBox(height: 20),

            const Icon(
              Icons.water_drop,
              size: 90,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            Text(
              "${current.toStringAsFixed(2)} / $goal L",

              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            LinearProgressIndicator(

              value: progress,

              minHeight: 18,
            ),

            const SizedBox(height: 40),

            ElevatedButton.icon(

              onPressed: () {

                setState(() {

                  current += 0.25;

                });

              },

              icon: const Icon(Icons.add),

              label: const Text("Drink 250 ml"),

            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(

              onPressed: () {

                setState(() {

                  if (current >= 0.25) {

                    current -= 0.25;

                  }

                });

              },

              icon: const Icon(Icons.remove),

              label: const Text("Remove 250 ml"),

            ),

            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {

                setState(() {

                  current = 0;

                });

              },

              child: const Text("Reset"),

            ),
          ],
        ),
      ),
    );
  }
}
