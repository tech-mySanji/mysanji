import 'package:bloc_test/bloc_test.dart';
import 'package:common/widgets/primary_button.dart';
import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/blocs/auth_bloc/auth_state.dart';
import 'package:customer_app/screens/otp_verfication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_text_field/otp_field.dart';

import '../mocks/firebase_mock.dart';
import '../mocks/mocks.dart';

void main() {
  late MultiBlocProvider widget;

  setupFirebaseAuthMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  setUp(() {
    MockAuthBloc authBloc = MockAuthBloc();
    widget = MultiBlocProvider(
      providers: [BlocProvider<AuthBloc>.value(value: authBloc)],
      child: MaterialApp(home: OtpVerificationScreen(),),
    );

    whenListen(
      authBloc,
      Stream.fromIterable([AuthInitialState()]),
      initialState:  AuthInitialState()
    );
  });

  testWidgets('Renders OTPVerification widget correctly',
      (WidgetTester tester) async {
// Render the widget
    await tester.pumpWidget(widget);

// Find and verify elements
    expect(find.text('OTP'), findsOneWidget);
    expect(find.text('Enter 6 digit OTP'), findsOneWidget);
    expect(find.byType(OTPTextField), findsOneWidget);
    expect(find.byType(PrimaryButton), findsOneWidget);
  });
}
