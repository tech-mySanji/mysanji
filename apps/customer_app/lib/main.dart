import 'package:common/my_sanji_theme.dart';
import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/firebase_options.dart';
import 'package:customer_app/mockdata.dart';
import 'package:customer_app/repository/auth_repository.dart';
import 'package:customer_app/repository/firestore_repository.dart';
import 'package:customer_app/screens/home_page.dart';
import 'package:customer_app/screens/list_of_products.dart';
import 'package:customer_app/screens/phone_number_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/app_bloc/app_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await FirebaseAppCheck.instance.activate(
  //   webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.appAttest,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _authRepository = AuthRepository();
    final _firestoreRepository = FirestoreRepository();


    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => AuthBloc(authRepository: _authRepository)),
          BlocProvider(
              create: (_) => AppBloc(_firestoreRepository,
                  authRepository: _authRepository))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: MySanjiThemeLight.getTheme(),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return HomePageScreen();
  }
}
