import 'package:common/widgets/primary_button.dart';
import 'package:customer_app/constants/labels.dart';
import 'package:customer_app/screens/phone_number_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PhoneNumberLoginWidget renders correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: PhoneNumberLoginWidget(),
    ));

    // Verify that the text 'Phone Number' is rendered.
    expect(find.text(Labels.PHONE_NUMBER), findsOneWidget);

    // Verify that the text 'Enter your 10 digit phone number' is rendered.
    expect(find.text(Labels.ENTER_PHONE_NUMBER), findsExactly(2));

    // Verify that the TextFormField is rendered.
    expect(find.byType(TextFormField), findsOneWidget);

    // Verify that the PrimaryButton is rendered.
    expect(find.byType(PrimaryButton), findsOneWidget);

    // Verify that the PrimaryButton has label is rendered.
    expect(find.text(Labels.SUBMIT), findsOneWidget);
  });
}
