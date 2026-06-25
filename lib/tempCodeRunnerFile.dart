mport 'package:flutter/material.dart';
import 'services/user_data_service.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> workoutPlan = [];

    if (UserDataService.goal.toLowerCase().contains('lose')) {
      workoutPlan = [
        {'day': 'Monday', 'workout': '30 min Walk + Dumbbell Workout'},
        {'day': 'Tuesday', 'workout': 'Chest + Triceps'},
        {'day': 'Wednesday', 'workout': 'Leg Day'},
        {'day': 'Thursday', 'workout': 'Cardio + Abs'},
        {'day': 'Friday', 'workout': 'Back + Biceps'},
        {'day': 'Saturday', 'workout': 'Full Body Workout'},
        {'day': 'Sunday', 'workout': 'Rest + Stretching'},
      ];
    } else {
      workoutPlan = [
        {'day': 'Monday', 'workout': 'Chest'},
        {'day': 'Tuesday', 'workout': 'Back'},
        {'day': 'Wednesday', 'workout': 'Legs'},
        {'day': 'Thursday', 'workout': 'Shoulders'},
        {'day': 'Friday', 'workout': 'Arms'},
        {'day': 'Saturday', 'workout': 'Full Body'},
        {'day': 'Sunday', 'workout': 'Rest'},
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Plan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: workoutPlan.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const Text('🏋️'),
                title: Text(workoutPlan[index]['day']!),
                subtitle: Text(workoutPlan[index]['workout']!),
              ),
            );
          },
        ),
      ),
    );
  }
}