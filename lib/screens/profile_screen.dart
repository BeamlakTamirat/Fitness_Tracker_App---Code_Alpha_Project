import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 16),
            Text('Name: Beamlak Tamirat', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Email: beamlak.tamirat@example.com',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Age: 25', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
