import 'package:flutter/material.dart';

class LoginSuccessWidget extends StatelessWidget {
  const LoginSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
