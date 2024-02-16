import 'package:common/widgets/primary_button.dart';
import 'package:customer_app/screens/otp_verfication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Renders OTPVerification widget correctly', (WidgetTester tester) async {
    // Render the widget
    await tester.pumpWidget(MaterialApp(home: OtpVerificationScreen()));

    // Find and verify elements
    expect(find.text('OTP'), findsOneWidget);
    expect(find.text('Enter 6 digit OTP'), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.byType(PrimaryButton), findsOneWidget);
  });
}