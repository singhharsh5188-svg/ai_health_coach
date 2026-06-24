import 'package:flutter/material.dart';
import 'services/user_data_service.dart';
import 'diet_plan_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double weight =
        double.tryParse(UserDataService.weight) ?? 0;

    double height =
        double.tryParse(UserDataService.height) ?? 0;

    double bmi = 0;

    if (height > 0) {
      bmi = weight / ((height / 100) * (height / 100));
    }

    double waterGoal = weight * 0.035;

    int calories = 2200;

    if (UserDataService.goal
        .toLowerCase()
        .contains('lose')) {

      calories = 2000;

    } else if (UserDataService.goal
        .toLowerCase()
        .contains('gain')) {

      calories = 2800;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Health Coach',
        ),

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
                '👋 Welcome ${UserDataService.name}',

                style: const TextStyle(
                  fontSize: 28,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading:
                      const Text('⚖️'),

                  title:
                      const Text('BMI'),

                  subtitle: Text(
                    bmi
                        .toStringAsFixed(1),
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading:
                      const Text('💧'),

                  title:
                      const Text(
                    'Daily Water',
                  ),

                  subtitle: Text(
                    '${waterGoal.toStringAsFixed(1)} L',
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading:
                      const Text('🔥'),

                  title:
                      const Text(
                    'Calories',
                  ),

                  subtitle: Text(
                    '$calories kcal',
                  ),
                ),
              ),

              Card(
                child: ListTile(
                  leading:
                      const Text('🏃'),

                  title:
                      const Text(
                    'Workout',
                  ),

                  subtitle: Text(
                    UserDataService.goal
                            .toLowerCase()
                            .contains(
                                'lose')
                        ? '45 min walk + strength training'
                        : '30 min workout',
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder: (context) =>
                            const DietPlanScreen(),
                      ),
                    );
                  },

                  icon: const Icon(
                    Icons.restaurant,
                  ),

                  label: const Text(
                    'Open Diet Plan',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}