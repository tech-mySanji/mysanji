import 'package:customer_app/main.dart';
import 'package:customer_app/screens/phone_number_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyApp', () {
    testWidgets('app builds', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('navigates to PhoneNumberLoginWidget on launch',
        (WidgetTester tester) async {
      // Test navigation to the correct screen
      await tester.pumpWidget(const MyApp());
      expect(find.byType(PhoneNumberLoginScreen), findsOneWidget);
    });

  });
}
