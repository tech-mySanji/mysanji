import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/auth_repository.dart';
import '../../repository/firestore_repository.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthRepository authRepository;
  final FirestoreRepository firestoreRepository;

  AppBloc(this.firestoreRepository, {required this.authRepository})
      : super(const AppInitialState()) {
    // on<AppInitialEvent>((event, emit) async {
    //   try {
    //     final user = await firestoreRepository
    //         .fetchCurrentUser(authRepository.getCurrentUser()!.uid);
    //     emit(UserRetrievedState(user));
    //   } catch (e) {
    //     // emit(AppErrorState(e.toString()));
    //   }
    // });

    on<CreateUserDetailsEvent>((event, emit) async {
      try {
        final user = authRepository.getCurrentUser();
        await firestoreRepository.createUserDetails(
            event.userDetails, user!.uid);
        emit(UserRetrievedState(event.userDetails));
      } catch (e) {
        // emit(AppErrorState(e.toString()));
      }
    });

    on<CreateCategoryEvent>((event, emit) async* {
      try {
        final categories = await firestoreRepository.getAllCategories();
        emit(CategoryRetrievedState(state.user!, categories));
      } catch (e) {
        // emit(AppErrorState(e.toString()));
      }
    });
  }
}
