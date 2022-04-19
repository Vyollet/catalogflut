// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:catalogflutter/main.dart';
import 'package:catalogflutter/gears/statusNetwork.dart';


void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  statusNetwork(
    height : 25, // double: default height
    width : double.maxFinite, // double: default width
    color : Colors.redAccent, // Color: default background color
    lookUpAddress : 'google.com', // String: default site to look up for checking internet connection
    endOffset : const Offset(0.0, 0.0), // Offset: default animation finish point offset
    beginOffset : const Offset(0.0, -1.0), // Offset: default animation start point offset
    animationDuration : const Duration(milliseconds: 200), // Duration: default animation duration
    // Text: default text
    title : const Text(
      'Please check your internet connection',
      style: TextStyle(color: Colors.white, fontSize: 14),
    ),
  );
}
