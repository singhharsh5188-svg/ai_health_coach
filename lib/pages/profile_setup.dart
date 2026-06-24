
import 'package:flutter/material.dart';
import '../services/user_data_service.dart';
import '../dashboard_screen.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {

  final nameController = TextEditingController();

  final ageController = TextEditingController();

  final genderController = TextEditingController();

  final heightController = TextEditingController();

  final weightController = TextEditingController();

  final goalController = TextEditingController();

  final sleepController = TextEditingController();

  final waterController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Health Profile"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            children: [

              TextField(
                controller: nameController,

                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: ageController,

                decoration: const InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: genderController,

                decoration: const InputDecoration(
                  labelText: "Gender",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: heightController,

                decoration: const InputDecoration(
                  labelText: "Height (cm)",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: weightController,

                decoration: const InputDecoration(
                  labelText: "Weight (kg)",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: goalController,

                decoration: const InputDecoration(
                  labelText: "Goal",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: sleepController,

                decoration: const InputDecoration(
                  labelText: "Sleep Hours",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: waterController,

                decoration: const InputDecoration(
                  labelText: "Daily Water Intake (litres)",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {

                  UserDataService.name = nameController.text;

                  UserDataService.age = ageController.text;

                  UserDataService.gender = genderController.text;

                  UserDataService.height = heightController.text;

                  UserDataService.weight = weightController.text;

                  UserDataService.goal = goalController.text;

                  UserDataService.sleepHours = sleepController.text;

                  UserDataService.waterIntake = waterController.text;

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  );
                },

                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}