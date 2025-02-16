// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_simple_app/my_app.dart';
import 'package:my_simple_app/my_home_page.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Counter Test')));

    final Finder incrementButton = find.byKey(const ValueKey('increment_button'));

    await tester.tap(incrementButton);
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter decrements smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Counter Test')));

    final Finder decrementButton = find.byKey(const ValueKey('decrement_button'));

    await tester.tap(decrementButton);
    await tester.pump();

    expect(find.text('-1'), findsOneWidget);
  });

  testWidgets('Counter reset smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Counter Test')));

    final Finder incrementButton = find.byKey(const ValueKey('increment_button'));
    final Finder resetButton = find.byKey(const ValueKey('reset_button'));

    await tester.tap(incrementButton);
    await tester.pump();
    await tester.tap(resetButton);
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}
