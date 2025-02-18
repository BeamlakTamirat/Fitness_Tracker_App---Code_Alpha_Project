import 'package:flutter/material.dart';

class NutritionScreen extends StatelessWidget {
  final List<Map<String, String>> nutritionTips = [
    {
      'title': 'Stay Hydrated',
      'description': 'Drink at least 8 glasses of water a day.'
    },
    {
      'title': 'Eat Balanced Meals',
      'description': 'Include a variety of foods in your diet.'
    },
    {
      'title': 'Limit Sugar Intake',
      'description': 'Avoid sugary drinks and snacks.'
    },
    {
      'title': 'Eat More Vegetables',
      'description': 'Include vegetables in every meal.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition'),
      ),
      body: ListView.builder(
        itemCount: nutritionTips.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nutritionTips[index]['title']!),
            subtitle: Text(nutritionTips[index]['description']!),
          );
        },
      ),
    );
  }
}
