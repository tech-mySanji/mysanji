import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitialState extends AuthState {}

class PhoneNumberLoginStartedState extends AuthState {
  final String phoneNumber;

  const PhoneNumberLoginStartedState(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class OTPSendState extends AuthState {
  final String phoneNumber;

  const OTPSendState(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class LoginSuccessState extends AuthState {
  final User user;

  const LoginSuccessState(this.user);

  @override
  List<Object> get props => [user];
}
