import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class AccountPageWidget extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  AccountPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => {},
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).canvasColor,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
                child: IconButton(
                  icon: Icon(
                    Icons.support_agent,
                    color: Theme.of(context).primaryColor, // Assuming primary color is used
                    size: 40.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => {},
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: 540.0,
                              child: Container(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFFDF2)), // Set borderColor
                  borderRadius: BorderRadius.circular(0.0), // Set borderRadius
                ),
                child: Material(
                  color: Color(0xFFFFFDF2), // Set fillColor
                  borderRadius: BorderRadius.circular(0.0), // Set borderRadius
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Theme.of(context).primaryColor,
                      size: 40.0,
                    ),
                    onPressed: () {
                      // Your onPressed function here
                    },
                  ),
                ),
              )
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).hintColor,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 9.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 360.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Container(
                              height: double.infinity,
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'Name',
                                            style: Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            'currentUserDisplayName',
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'Pincode',
                                            style: Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            'pincode',
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'Phone Number',
                                            style: Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            'currentPhoneNumber',
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 15.0, 0.0, 0.0),
                                          child: Text(
                                            'Address',
                                            style: Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 45.0, 15.0),
                                          child: Text(
                                            'currentUserDocument?.address',
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 16.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/yellowLogo.png',
                                          width: 80.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 26.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Theme.of(context).primaryColor), // Set borderColor
                                          borderRadius: BorderRadius.circular(50.0), // Set borderRadius
                                        ),
                                        child: Material(
                                          color: Color(0x3BFFFDF2), // Set fillColor
                                          borderRadius: BorderRadius.circular(50.0), // Set borderRadius
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.mode_edit_outline,
                                              color: Theme.of(context).canvasColor,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor: Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => {},
                                                    child: Padding(
                                                      padding: MediaQuery.viewInsetsOf(context),
                                                      child: Container(
                                                        height: 420.0,
                                                        child: Text('UpdateUserDetailsWidget()'),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                      ,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}