import 'package:common/widgets.dart';
import 'package:customer_app/blocs/auth_bloc/auth_state.dart';
import 'package:customer_app/constants/labels.dart';
import 'package:customer_app/screens/user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/auth_bloc/auth_events.dart';
import 'login_sucess.dart';

class OtpVerificationScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => UserDetails()));
        }
      },
      child: GestureDetector(
        onTap: () => {},
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Theme.of(context).canvasColor,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/phone_login_mask.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Labels.OTP,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                Labels.ENTER_OTP,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 16.0, 0.0),
                              child: OTPTextField(
                                  length: 6,
                                  isDense: true,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  fieldWidth: 30.0,
                                  fieldStyle: FieldStyle.underline,
                                  outlineBorderRadius: 10,
                                  spaceBetween: 10,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                  onCompleted: (pin) {
                                    _authBloc.add(OTPEnteredEvent(pin));
                                  }),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: PrimaryButton(
                                text: Labels.VERIFY,
                                onPressed: () => {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
