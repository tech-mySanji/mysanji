import 'package:bloc_test/bloc_test.dart';
import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/blocs/auth_bloc/auth_events.dart';
import 'package:customer_app/blocs/auth_bloc/auth_state.dart';
import 'package:customer_app/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockAuthRepository extends Mock implements AuthRepository {
  MockAuthRepository(FirebaseAuth? firebaseAuth);
}

class MockAuthBloc extends MockBloc<AuthEvent,AuthState> implements AuthBloc{}

class AuthStateFake extends Fake implements AuthState {}

class AuthEventFake extends Fake implements AuthEvent {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class FakeRoute extends Fake implements Route {}
