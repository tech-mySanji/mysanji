import 'package:customer_app/model/category.dart';
import 'package:customer_app/model/user_details_model.dart';
import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppInitialEvent extends AppEvent {
  const AppInitialEvent();

  @override
  List<Object> get props => [];
}

class CreateUserDetailsEvent extends AppEvent {
  final UserDetailsModel userDetails;

  const CreateUserDetailsEvent(this.userDetails);

  @override
  List<Object> get props => [userDetails];
}

class GetAllCategoryEvent extends AppEvent {
  const GetAllCategoryEvent();

  @override
  List<Object> get props => [];
}

class CategorySelectedEvent extends AppEvent {
  final Category selectedCategory;

  const CategorySelectedEvent(this.selectedCategory);

  @override
  List<Object> get props => [selectedCategory];
}

class GetProductEvent extends AppEvent {
  const GetProductEvent();

  @override
  List<Object> get props => [];
}
