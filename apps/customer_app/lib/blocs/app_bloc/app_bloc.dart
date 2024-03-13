import 'package:customer_app/model/category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/product.dart';
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

    on<GetAllCategoryEvent>((event, emit) async {
      try {
        String branchId = '1Z2HPXhhb5ehUk0hNuIg';
        var snapshots = firestoreRepository.getCategoriesSnapshot(branchId);
        var categories = Category.categoriesStream(snapshots);

        emit(CategoryRetrievedState(state.user, categories));
      } catch (e) {
        // emit(AppErrorState(e.toString()));
      }
    });

    on<CategorySelectedEvent>((event, emit) async {
      emit(CategorySelectedState(state.user, state.categories!, event.selectedCategory));
    });

    on<GetProductEvent>((event, emit) async {
      try {
        String branchId = '1Z2HPXhhb5ehUk0hNuIg';
        var snapshots = firestoreRepository.getProductsSnapshot(branchId);
        var products = ProductModel.productsStream(snapshots);

        emit(ProductRetrievedState(state.user, state.categories!, products, state.selectedCategory));
      } catch (e) {
        // emit(AppErrorState(e.toString()));
      }
    });
  }
}
