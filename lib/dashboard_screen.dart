import 'package:flutter/material.dart';
import 'services/user_data_service.dart';
import 'diet_plan_screen.dart';
import 'workout_plan_screen.dart';
import 'water_tracker_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double weight = double.tryParse(UserDataService.weight) ?? 0;
    double height = double.tryParse(UserDataService.height) ?? 0;
    double age = double.tryParse(UserDataService.age) ?? 18;

    // BMI
    double bmi = 0;
    if (height > 0) {
      bmi = weight / ((height / 100) * (height / 100));
    }

    // Daily Water Goal (35 ml per kg)
    double waterGoal = weight * 0.035;

    // -------------------------
    // CALORIE CALCULATION
    // -------------------------

    String gender = UserDataService.gender.toLowerCase();

    bool isMale = gender == "male" ||
        gender == "man" ||
        gender == "boy";

    double bmr;

    if (isMale) {
      // Male Formula
      bmr = (10 * weight) +
          (6.25 * height) -
          (5 * age) +
          5;
    } else {
      // Female Formula
      bmr = (10 * weight) +
          (6.25 * height) -
          (5 * age) -
          161;
    }

    // Moderate Activity
    double calories = bmr * 1.55;

    // Goal
    if (UserDataService.goal
        .toLowerCase()
        .contains('lose')) {
      calories -= 500;
    } else if (UserDataService.goal
        .toLowerCase()
        .contains('gain')) {
      calories += 400;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Health Coach"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              Text(
                "👋 Welcome ${UserDataService.name}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading: const Text(
                    "⚖️",
                    style: TextStyle(fontSize: 24),
                  ),
                  title: const Text("BMI"),
                  subtitle: Text(
                    bmi.toStringAsFixed(1),
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Text(
                    "💧",
                    style: TextStyle(fontSize: 24),
                  ),
                  title: const Text(
                      "Daily Water Goal"),
                  subtitle: Text(
                    "${waterGoal.toStringAsFixed(1)} L",
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Text(
                    "🔥",
                    style: TextStyle(fontSize: 24),
                  ),
                  title: const Text(
                      "Daily Calories"),
                  subtitle: Text(
                    "${calories.round()} kcal",
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Text(
                    "🏃",
                    style: TextStyle(fontSize: 24),
                  ),
                  title: const Text(
                      "Goal"),
                  subtitle: Text(
                    UserDataService.goal,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const DietPlanScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                      Icons.restaurant),
                  label: const Text(
                      "Open Diet Plan"),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const WorkoutPlanScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                      Icons.fitness_center),
                  label: const Text(
                      "Open Workout Plan"),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const WaterTrackerScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                      Icons.water_drop),
                  label: const Text(
                      "Open Water Tracker"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}