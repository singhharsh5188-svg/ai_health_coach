import 'package:flutter/material.dart';
import 'services/user_data_service.dart';

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String breakfast = '';
    String lunch = '';
    String dinner = '';

    final today = DateTime.now().weekday;

    if (UserDataService.goal.toLowerCase().contains('lose')) {
      switch (today) {
        case 1:
          breakfast = 'Oats + 2 Eggs';
          lunch = '2 Roti + Dal + Salad';
          dinner = 'Paneer + Vegetables';
          break;

        case 2:
          breakfast = 'Poha + Fruits';
          lunch = 'Brown Rice + Dal';
          dinner = 'Paneer Salad';
          break;

        case 3:
          breakfast = 'Upma + Green Tea';
          lunch = '2 Roti + Sabzi';
          dinner = 'Soup + Salad';
          break;

        case 4:
          breakfast = 'Sprouts + Fruits';
          lunch = 'Dal + Rice';
          dinner = 'Paneer + Vegetables';
          break;

        case 5:
          breakfast = 'Besan Chilla';
          lunch = '2 Roti + Dal';
          dinner = 'Vegetable Soup';
          break;

        case 6:
          breakfast = 'Eggs + Toast';
          lunch = 'Rice + Chicken/Paneer';
          dinner = 'Salad Bowl';
          break;

        case 7:
          breakfast = 'Healthy Cheat Meal';
          lunch = 'Balanced Indian Meal';
          dinner = 'Light Dinner';
          break;
      }
    } else if (UserDataService.goal.toLowerCase().contains('gain')) {
      switch (today) {
        case 1:
          breakfast = '4 Eggs + Banana Shake';
          lunch = 'Rice + Chicken';
          dinner = 'Paneer + Rice';
          break;

        case 2:
          breakfast = 'Peanut Butter Toast';
          lunch = 'Chicken + Rice';
          dinner = 'Paneer + Milk';
          break;

        case 3:
          breakfast = 'Oats + Milk + Banana';
          lunch = 'Rice + Dal';
          dinner = 'Paneer + Roti';
          break;

        case 4:
          breakfast = 'Egg Omelette + Toast';
          lunch = 'Chicken + Rice';
          dinner = 'Milk + Paneer';
          break;

        case 5:
          breakfast = 'Banana Shake';
          lunch = 'Rice + Chicken';
          dinner = 'Paneer + Rice';
          break;

        case 6:
          breakfast = 'Eggs + Oats';
          lunch = 'Chicken + Dal';
          dinner = 'Paneer + Milk';
          break;

        case 7:
          breakfast = 'Flexible High-Calorie Meal';
          lunch = 'Balanced Meal';
          dinner = 'Protein Rich Dinner';
          break;
      }
    } else {
      breakfast = 'Poha + Fruits';
      lunch = '2 Roti + Dal';
      dinner = 'Balanced Dinner';
    }

    List<String> days = [
      '',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Plan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '🍎 Diet Plan for ${UserDataService.name}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                '📅 ${days[today]}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 25),

              Card(
                child: ListTile(
                  leading: const Text('🌅'),
                  title: const Text('Breakfast'),
                  subtitle: Text(breakfast),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Text('🍛'),
                  title: const Text('Lunch'),
                  subtitle: Text(lunch),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Text('🌙'),
                  title: const Text('Dinner'),
                  subtitle: Text(dinner),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}