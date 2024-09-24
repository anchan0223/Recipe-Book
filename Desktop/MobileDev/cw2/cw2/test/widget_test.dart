// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cw2/main.dart'; // Replace with your actual project name
import 'package:cw2/screen2.dart';

void main() {
  testWidgets('HomeScreen displays list of recipes',
      (WidgetTester tester) async {
    // Build the HomeScreen and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify that the recipe list is displayed.
    expect(find.text('Spaghetti'), findsOneWidget);
    expect(find.text('Grilled Cheese'), findsOneWidget);
    expect(find.text('Pancakes'), findsOneWidget);
  });

  testWidgets('Tapping a recipe navigates to Screen2 (DetailsScreen)',
      (WidgetTester tester) async {
    // Build the HomeScreen and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Tap on the 'Spaghetti' recipe.
    await tester.tap(find.text('Spaghetti'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that the Screen2 is displayed with correct recipe details.
    expect(find.text('Ingredients:'), findsOneWidget);
    expect(find.text('Pasta, Tomato Sauce, Garlic'), findsOneWidget);
    expect(find.text('Instructions:'), findsOneWidget);
  });
}
