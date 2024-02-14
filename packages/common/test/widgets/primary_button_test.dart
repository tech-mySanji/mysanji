import 'package:common/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PrimaryButton renders correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: PrimaryButton(
       text: 'Submit',
        onPressed: () {},
      ),
    ));

    // Verify that the text 'Submit' is rendered.
    expect(find.text('Submit'), findsOneWidget);
  });
}