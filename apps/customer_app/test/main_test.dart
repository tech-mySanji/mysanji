import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/main.dart';
import 'package:customer_app/screens/phone_number_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mocks/firebase_mock.dart';
import 'mocks/mocks.dart';

void main() {
  group('MyApp', () {
    late MockAuthBloc authBloc;
    late MultiBlocProvider widget;
    setupFirebaseAuthMocks();

    setUpAll(() async {
      await Firebase.initializeApp();
    });

    setUp(() {
      authBloc = MockAuthBloc();
      widget = MultiBlocProvider(
        providers: [BlocProvider<AuthBloc>.value(value: authBloc)],
        child: const MyApp(),
      );
    });

    testWidgets('app builds', (WidgetTester tester) async {
      await tester.pumpWidget(widget);
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('navigates to PhoneNumberLoginWidget on launch', (WidgetTester tester) async {
      // Test navigation to the correct screen
      await tester.pumpWidget(widget);
      expect(find.byType(PhoneNumberLoginScreen), findsOneWidget);
    });
  });
}