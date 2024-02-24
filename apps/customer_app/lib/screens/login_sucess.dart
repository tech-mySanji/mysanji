import 'package:customer_app/blocs/app_bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/app_bloc/app_event.dart';

class LoginSuccessWidget extends StatelessWidget {
  const LoginSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppBloc appBloc = BlocProvider.of<AppBloc>(context);


    appBloc.add(const AppInitialEvent());

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success'),
      ),
      body: Center(
        child: Text('Login Success'),
      ),
    );
  }
}
