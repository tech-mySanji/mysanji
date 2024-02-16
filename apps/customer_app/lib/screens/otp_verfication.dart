import 'package:common/widgets.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                            'OTP',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Enter 6 digit OTP',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 16.0, 0.0),
                            child: Container(
                              height: 55.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: Color(0x5AFBCC2D),
                                    offset: Offset(0.0, 3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: TextFormField(
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: '6 Digit Code',
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                ),
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                                keyboardType: TextInputType.number,
                              ),
                            ),
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
                              text: 'Verify',
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
    );
  }
}
