import 'package:flutter/material.dart';
import 'services/user_data_service.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> workoutPlan = [];

    if (UserDataService.goal.toLowerCase().contains('lose')) {
      workoutPlan = [
        {
          'day': 'Monday',
          'workout':
              '30 min Fast Walk\n3x15 Squats\n3x12 Dumbbell Press\n3x30 sec Plank'
        },
        {
          'day': 'Tuesday',
          'workout':
              '25 min Walk\n3x12 Dumbbell Rows\n3x12 Bicep Curls\n3x20 Mountain Climbers'
        },
        {
          'day': 'Wednesday',
          'workout':
              '3x15 Lunges\n3x15 Squats\n3x20 Calf Raises\n15 min Walk'
        },
        {
          'day': 'Thursday',
          'workout':
              '20 min Cardio\n3x20 Jumping Jacks\n3x30 sec Plank\n3x15 Crunches'
        },
        {
          'day': 'Friday',
          'workout':
              '3x12 Dumbbell Rows\n3x12 Hammer Curls\n3x15 Pushups'
        },
        {
          'day': 'Saturday',
          'workout':
              'Full Body Circuit\nSquats\nPushups\nRows\nPlank\nRepeat 3 Rounds'
        },
        {
          'day': 'Sunday',
          'workout':
              'Recovery Day\n20 min Walk\nStretching'
        },
      ];
    } else {
      workoutPlan = [
        {
          'day': 'Monday',
          'workout':
              'Chest\n4x12 Dumbbell Press\n4x12 Pushups'
        },
        {
          'day': 'Tuesday',
          'workout':
              'Back\n4x12 Rows\n4x12 Deadlifts'
        },
        {
          'day': 'Wednesday',
          'workout':
              'Legs\n4x15 Squats\n4x12 Lunges'
        },
        {
          'day': 'Thursday',
          'workout':
              'Shoulders\n4x12 Shoulder Press\n4x15 Lateral Raises'
        },
        {
          'day': 'Friday',
          'workout':
              'Arms\n4x12 Bicep Curls\n4x12 Tricep Extensions'
        },
        {
          'day': 'Saturday',
          'workout':
              'Full Body Workout'
        },
        {
          'day': 'Sunday',
          'workout':
              'Rest Day'
        },
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
                subtitle: Text(
                  workoutPlan[index]['workout']!,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}