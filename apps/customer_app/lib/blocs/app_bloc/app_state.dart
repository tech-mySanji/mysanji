import 'package:customer_app/model/category.dart';
import 'package:customer_app/model/user.dart';
import 'package:customer_app/model/user_details_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../model/product.dart';

@immutable
abstract class AppState extends Equatable {
  final UserDetailsModel? user;
  final Stream<List<Category>>? categories;
  final Stream<List<ProductModel>>? products;
  final Category? selectedCategory;
  const AppState({this.user, this.categories, this.products, this.selectedCategory});

  @override
  List<Object> get props => [];
}

class AppInitialState extends AppState {
  const AppInitialState();

  @override
  List<Object> get props => [];
}

class UserRetrievedState extends AppState {
  final UserDetailsModel userDetails;

  const UserRetrievedState(this.userDetails);

  @override
  List<Object> get props => [userDetails];
}

class CategoryRetrievedState extends AppState {
  final UserDetailsModel? userDetails; // It shouldn't be optional
  final Stream<List<Category>> categories;

  const CategoryRetrievedState(this.userDetails, this.categories);

  @override
  List<Object> get props => [categories];
}


class CategorySelectedState extends AppState {
  final UserDetailsModel? userDetails; // It shouldn't be optional
  final Stream<List<Category>> categories;
  final Category selectedCategory;

  const CategorySelectedState(this.userDetails, this.categories, this.selectedCategory);

  @override
  List<Object> get props => [categories,selectedCategory];
}

class ProductRetrievedState extends AppState {
  final UserDetailsModel? userDetails; // It shouldn't be optional
  final Stream<List<Category>> categories;
  final Stream<List<ProductModel>> products;
  final Category? selectedCategory;

  const ProductRetrievedState(this.userDetails, this.categories, this.products, this.selectedCategory);

  @override
  List<Object> get props => [categories,products];
}
