import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  final List<Map<String, String>> workouts = [
    {'name': 'Push-ups', 'description': 'A basic upper body exercise.'},
    {'name': 'Squats', 'description': 'A basic lower body exercise.'},
    {'name': 'Lunges', 'description': 'A lower body exercise for legs.'},
    {'name': 'Plank', 'description': 'A core strengthening exercise.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout'),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(workouts[index]['name']!),
            subtitle: Text(workouts[index]['description']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkoutDetailScreen(
                    workout: workouts[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class WorkoutDetailScreen extends StatelessWidget {
  final Map<String, String> workout;

  WorkoutDetailScreen({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              workout['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              workout['description']!,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Start workout
              },
              child: Text('Start Workout'),
            ),
          ],
        ),
      ),
    );
  }
}
