import 'package:common/widgets.dart';
import 'package:customer_app/blocs/app_bloc/app_event.dart';
import 'package:customer_app/model/user_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/app_bloc/app_bloc.dart';

class UserDetails extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppBloc appBloc = BlocProvider.of<AppBloc>(context);

    return GestureDetector(
      onTap: () => {},
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).canvasColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
              ),
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
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                    ),
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Service Location',
                                style: Theme.of(context).textTheme.titleMedium),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text('Please provide proper address',
                                  style: Theme.of(context).textTheme.bodySmall),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 20.0, 0.0),
                              child: Container(
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: Color(0x5AFBCC2D),
                                      offset: Offset(0.0, 3.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: TextFormField(
                                  controller: _fullNameController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Full Name',
                                    hintStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).cardColor,
                                  ),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 20.0, 0.0),
                              child: Container(
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: Color(0x5AFBCC2D),
                                      offset: Offset(0.0, 3.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: TextFormField(
                                  controller: _addressController,
                                  autofocus: true,
                                  textCapitalization: TextCapitalization.words,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Address',
                                    hintStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).cardColor,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 20.0, 0.0),
                              child: Container(
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: Color(0x5AFBCC2D),
                                      offset: Offset(0.0, 3.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: TextFormField(
                                  controller: _pincodeController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pincode',
                                    hintStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).cardColor,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: PrimaryButton(
                                text: 'Submit',
                                onPressed: () => {
                                  appBloc.add(CreateUserDetailsEvent(
                                      UserDetailsModel(
                                          name: _fullNameController.text,
                                          address: _addressController.text,
                                          pincode: _pincodeController.text)))
                                },
                              ),
                            ),
                          ],
                        ),
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
