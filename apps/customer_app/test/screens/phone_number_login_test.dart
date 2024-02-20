import 'package:bloc_test/bloc_test.dart';
import 'package:common/widgets/primary_button.dart';
import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/blocs/auth_bloc/auth_events.dart';
import 'package:customer_app/blocs/auth_bloc/auth_state.dart';
import 'package:customer_app/constants/labels.dart';
import 'package:customer_app/screens/otp_verfication.dart';
import 'package:customer_app/screens/phone_number_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/firebase_mock.dart';
import '../mocks/mocks.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late MultiBlocProvider widget;
  MockAuthBloc authBloc = MockAuthBloc();
  final mockObserver = MockNavigatorObserver();

  setupFirebaseAuthMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
    registerFallbackValue(AuthEventFake());
    registerFallbackValue(FakeRoute());
  });

  setUp(() {
    widget = MultiBlocProvider(
      providers: [BlocProvider<AuthBloc>.value(value: authBloc)],
      child: MaterialApp(
          home: PhoneNumberLoginScreen(), navigatorObservers: [mockObserver]),
    );

    // whenListen(authBloc, Stream.fromIterable([AuthInitialState()]),
    //     initialState: AuthInitialState());

    when(() => authBloc.state).thenReturn(AuthInitialState());
  });

  testWidgets('PhoneNumberLoginWidget renders correctly',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);
    await tester.pumpAndSettle();

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

  testWidgets('PhoneNumberLoginWidget System UI Overlay Test',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);

    // Verify that System UI Overlay Style is set for iOS
    const systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light, // Assuming light theme
      systemStatusBarContrastEnforced: true,
    );

    expect(tester.platformDispatcher.platformBrightness,
        systemUiOverlayStyle.statusBarBrightness);
  });

  testWidgets('PhoneNumberLoginWidget System UI Overlay Test',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);

    // Verify that System UI Overlay Style is set for iOS
    const systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light, // Assuming light theme
      systemStatusBarContrastEnforced: true,
    );

    expect(tester.platformDispatcher.platformBrightness,
        systemUiOverlayStyle.statusBarBrightness);
  });

  testWidgets('PhoneNumberEnteredEvent not triggered if formIs Invalid',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);
    final primaryButton = find.byType(PrimaryButton);
    expect(primaryButton, findsOneWidget);
    await tester.tap(primaryButton);
    await tester.pump();

    // check this event is not triggered
    verifyNever(() => authBloc.add(PhoneNumberEnteredEvent("")));
  });

  testWidgets('PhoneNumberEnteredEvent triggered if formIs valid',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);
    final primaryButton = find.byType(PrimaryButton);

    final testEditingController = find.byType(TextField);
    expect(testEditingController, findsOneWidget);
    await tester.enterText(testEditingController, "1234567890");
    await tester.tap(primaryButton);
    await tester.pump();

    // Verify that PhoneNumberEnteredEvent is triggered
    verify(() => authBloc.add(PhoneNumberEnteredEvent("+911234567890")));
  });

  testWidgets('After Phone Number is entered, OTP Screen Is triggered',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(widget);
    await tester.pumpAndSettle();
    expect(find.byType(PhoneNumberLoginScreen), findsOneWidget);

    whenListen(authBloc,
        Stream.fromIterable([PhoneNumberLoginStartedState('+911234567890')]));

    verify(() => mockObserver.didPush(any(), any()));
  });
}
