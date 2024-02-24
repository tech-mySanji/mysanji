import 'package:customer_app/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}


class AppInitialState extends AppState {
  const AppInitialState();

  @override
  List<Object> get props => [];
}

class UserRetrievedState extends AppState {
  final UserModel user;

  const UserRetrievedState(this.user);

  @override
  List<Object> get props => [user];
}

