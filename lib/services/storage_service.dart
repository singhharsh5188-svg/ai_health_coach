import 'package:shared_preferences/shared_preferences.dart';
import 'user_data_service.dart';

class StorageService {
  static Future<void> saveUserData() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('name', UserDataService.name);
    await prefs.setString('age', UserDataService.age);
    await prefs.setString('gender', UserDataService.gender);
    await prefs.setString('height', UserDataService.height);
    await prefs.setString('weight', UserDataService.weight);
    await prefs.setString('goal', UserDataService.goal);
    await prefs.setString('sleepHours', UserDataService.sleepHours);
    await prefs.setString('waterIntake', UserDataService.waterIntake);
  }

  static Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();

    UserDataService.name = prefs.getString('name') ?? '';
    UserDataService.age = prefs.getString('age') ?? '';
    UserDataService.gender = prefs.getString('gender') ?? '';
    UserDataService.height = prefs.getString('height') ?? '';
    UserDataService.weight = prefs.getString('weight') ?? '';
    UserDataService.goal = prefs.getString('goal') ?? '';
    UserDataService.sleepHours = prefs.getString('sleepHours') ?? '';
    UserDataService.waterIntake = prefs.getString('waterIntake') ?? '';
  }

  static Future<void> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}