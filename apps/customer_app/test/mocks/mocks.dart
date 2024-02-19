import 'package:bloc_test/bloc_test.dart';
import 'package:customer_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:customer_app/blocs/auth_bloc/auth_events.dart';
import 'package:customer_app/blocs/auth_bloc/auth_state.dart';
import 'package:customer_app/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockAuthRepository extends Mock implements AuthRepository {
  MockAuthRepository(FirebaseAuth? firebaseAuth);
}


class MockAuthBloc extends MockBloc<AuthEvent,AuthState> implements AuthBloc{}

