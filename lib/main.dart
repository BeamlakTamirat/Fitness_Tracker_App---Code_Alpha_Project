import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/theme.dart';
import 'screens/workout_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/nutrition_screen.dart';

void main() {
  runApp(FitnessTrackerApp());
}

class FitnessTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: appTheme,
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/workout': (context) => WorkoutScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
        '/nutrition': (context) => NutritionScreen(),
      },
    );
  }
}
