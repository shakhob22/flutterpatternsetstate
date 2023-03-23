// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterpatternsetstate/main.dart';

void main() {
  testWidgets('Test 1', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(GridView), findsNothing);

  });

  testWidgets('Test 2', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text("setState"), findsOneWidget);
    expect(find.text("setState"), findsWidgets);
    expect(find.text("setState"), findsNWidgets(1));
    expect(find.text("setState"), findsAtLeastNWidgets(3));
    expect(find.text("GetX"), findsNothing);

  });

  testWidgets('Test 3', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byTooltip("+"));
    await tester.pump();

    expect(find.text("Here we go"), findsWidgets);
  });

  testWidgets('Test 4', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text("Here we go"), findsWidgets);
  });

  testWidgets('Test 5', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text("Here we go"), findsWidgets);
  });

}
