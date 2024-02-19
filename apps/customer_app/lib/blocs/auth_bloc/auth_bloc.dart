import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/auth_repository.dart';
import 'auth_events.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  String verificationId = "";

  AuthBloc({required this.authRepository}) : super(AuthInitialState()) {

    on<PhoneNumberEnteredEvent>((event, emit) async {
      emit(PhoneNumberLoginStartedState(event.phoneNumber));
      sendOtp(event.phoneNumber).listen((event) {
        add(event);
      });
      emit(OTPSendState(event.phoneNumber));
    });

    on<OTPEnteredEvent>((event, emit) async {
      UserCredential userCredential =
          await authRepository.verifyOTP(event.smsCode, verificationId);
      if (userCredential.user == null) {
        // TODO: Handle if user is null
      } else {
        emit(LoginSuccessState(userCredential.user!));
        print("Login Success");
      }
    });
  }

  Stream<AuthEvent> sendOtp(String phoneNumber) async* {
    StreamController<AuthEvent> stream = StreamController();

    phoneVerificationCompleted(PhoneAuthCredential phoneAuthCredential) async {
      UserCredential userCredential =
          await authRepository.signInWithCredential(phoneAuthCredential);
      if (userCredential.user == null) {
        // TODO Handle if user is null
      } else {
        stream.add(LoginSuccessEvent(userCredential.user!));
        print("Login Success");
      }
    }

    phoneVerificationFailed(FirebaseAuthException e) {
      if (e.message != null) {
        stream.add(LoginFailureEvent(e.message!));
      } else {
        stream.add(const LoginFailureEvent("An error occurred"));
      }
    }

    phoneCodeSent(String verificationId, int? resendToken) async {
      this.verificationId = verificationId;
      print("OTP sent");
    }

    autoRetrievalTimeout(String verificationId) {
      this.verificationId = verificationId;
      print('autoRetrievalTimeout');
    }

    await authRepository.signInWithPhoneNumber(
      phoneNumber,
      phoneVerificationCompleted,
      phoneVerificationFailed,
      phoneCodeSent,
      autoRetrievalTimeout,
    );
  }
}
