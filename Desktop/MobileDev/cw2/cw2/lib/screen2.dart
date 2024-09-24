import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String recipeName;
  final String ingredients;
  final String instructions;

  Screen2({
    required this.recipeName,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(ingredients),
            SizedBox(height: 16),
            Text(
              'Instructions:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
