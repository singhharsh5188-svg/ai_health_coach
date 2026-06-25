import 'package:flutter/material.dart';
import 'services/user_data_service.dart';

class WorkoutPlanScreen extends StatelessWidget {
const WorkoutPlanScreen({super.key});

@override
Widget build(BuildContext context) {
List<Map<String, String>> workoutPlan = [];

```
if (UserDataService.goal.toLowerCase().contains('lose')) {
  workoutPlan = [
    {
      'day': 'Monday',
      'workout':
          '🏃 Warmup: 5 min walk\n\n'
          '🏋️ Squats: 3 x 15\n'
          '🏋️ Dumbbell Press: 3 x 12\n'
          '🏋️ Plank: 3 x 30 sec\n\n'
          '🔥 Calories Burn: 200-250 kcal'
    },
    {
      'day': 'Tuesday',
      'workout':
          '🏃 Warmup: 5 min walk\n\n'
          '🏋️ Dumbbell Rows: 3 x 12\n'
          '🏋️ Bicep Curls: 3 x 12\n'
          '🏋️ Mountain Climbers: 3 x 20\n\n'
          '🔥 Calories Burn: 180-220 kcal'
    },
    {
      'day': 'Wednesday',
      'workout':
          '🏃 Warmup: 5 min walk\n\n'
          '🏋️ Lunges: 3 x 15\n'
          '🏋️ Squats: 3 x 15\n'
          '🏋️ Calf Raises: 3 x 20\n\n'
          '🔥 Calories Burn: 200 kcal'
    },
    {
      'day': 'Thursday',
      'workout':
          '🏃 Cardio: 20 min\n\n'
          '🏋️ Jumping Jacks: 3 x 20\n'
          '🏋️ Plank: 3 x 30 sec\n'
          '🏋️ Crunches: 3 x 15\n\n'
          '🔥 Calories Burn: 220 kcal'
    },
    {
      'day': 'Friday',
      'workout':
          '🏃 Warmup: 5 min walk\n\n'
          '🏋️ Dumbbell Rows: 3 x 12\n'
          '🏋️ Hammer Curls: 3 x 12\n'
          '🏋️ Pushups: 3 x 15\n\n'
          '🔥 Calories Burn: 200 kcal'
    },
    {
      'day': 'Saturday',
      'workout':
          '🏃 Full Body Circuit\n\n'
          '🏋️ Squats\n'
          '🏋️ Pushups\n'
          '🏋️ Rows\n'
          '🏋️ Plank\n\n'
          '🔁 Repeat 3 Rounds\n'
          '🔥 Calories Burn: 250 kcal'
    },
    {
      'day': 'Sunday',
      'workout':
          '😌 Recovery Day\n\n'
          '🚶 20 min Walk\n'
          '🤸 Stretching\n'
          '🧘 Relax'
    },
  ];
} else {
  workoutPlan = [
    {
      'day': 'Monday',
      'workout':
          'Chest\n\n'
          '🏋️ Dumbbell Press: 4 x 12\n'
          '🏋️ Pushups: 4 x 12'
    },
    {
      'day': 'Tuesday',
      'workout':
          'Back\n\n'
          '🏋️ Rows: 4 x 12\n'
          '🏋️ Deadlifts: 4 x 12'
    },
    {
      'day': 'Wednesday',
      'workout':
          'Legs\n\n'
          '🏋️ Squats: 4 x 15\n'
          '🏋️ Lunges: 4 x 12'
    },
    {
      'day': 'Thursday',
      'workout':
          'Shoulders\n\n'
          '🏋️ Shoulder Press: 4 x 12\n'
          '🏋️ Lateral Raises: 4 x 15'
    },
    {
      'day': 'Friday',
      'workout':
          'Arms\n\n'
          '🏋️ Bicep Curls: 4 x 12\n'
          '🏋️ Tricep Extensions: 4 x 12'
    },
    {
      'day': 'Saturday',
      'workout': '🏋️ Full Body Workout'
    },
    {
      'day': 'Sunday',
      'workout': '😌 Rest Day'
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
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const Text(
              '🏋️',
              style: TextStyle(fontSize: 28),
            ),
            title: Text(
              workoutPlan[index]['day']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              workoutPlan[index]['workout']!,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
        );
      },
    ),
  ),
);
```

}
}
