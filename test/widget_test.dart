import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flut_app/main.dart'; // Make sure to replace 'flut_app' with the actual name of your main.dart file

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
        const BackgroundHelloApp()); // Use the correct app widget class here

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
}
