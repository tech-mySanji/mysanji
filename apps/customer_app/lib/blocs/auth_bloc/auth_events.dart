import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  List<Object> get props => [];
}

class AuthInitialEvent extends AuthEvent {}

// After the Phone number is entered, the PhoneNumberEnteredEvent is dispatched to the AuthBloc.
class PhoneNumberEnteredEvent extends AuthEvent {
  final String phoneNumber;

  const PhoneNumberEnteredEvent(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

// After the OTP is entered, the OTPEnteredEvent is dispatched to the AuthBloc.
class OTPEnteredEvent extends AuthEvent {
  final String smsCode;

  const OTPEnteredEvent(this.smsCode);

  @override
  List<Object> get props => [smsCode];
}

// After Authenticated, and the user is logged in, the LoginSuccessEvent is dispatched to the AuthBloc.
class LoginSuccessEvent extends AuthEvent {
  final User user;

  const LoginSuccessEvent(this.user);

  @override
  List<Object> get props => [user];
}

class LoginFailureEvent extends AuthEvent {
  final String error;

  const LoginFailureEvent(this.error);

  @override
  List<Object> get props => [error];
}
