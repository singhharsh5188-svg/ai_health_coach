import 'package:flutter/material.dart';
import 'services/user_data_service.dart';

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String breakfast = '';
    String lunch = '';
    String dinner = '';

    if (UserDataService.goal.toLowerCase().contains('lose')) {

      breakfast = 'Oats + 2 eggs + fruits';

      lunch = '2 roti + dal + salad';

      dinner = 'Paneer + vegetables';

    } else if (UserDataService.goal.toLowerCase().contains('gain')) {

      breakfast = '4 eggs + milk + banana';

      lunch = 'Rice + chicken + curd';

      dinner = 'Paneer + rice + vegetables';

    } else {

      breakfast = 'Poha + fruits';

      lunch = '2 roti + dal + vegetables';

      dinner = 'Light balanced meal';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Plan'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

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

            const SizedBox(height: 30),

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
    );
  }
}