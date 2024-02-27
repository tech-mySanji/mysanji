import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/category.freezed.dart';
part 'generated/category.g.dart';

@freezed
class Category with _$Category {
  const factory Category(
      {String? name,
      String? description,
      String? image,
      String? id}) = _Category;

  factory Category.fromSnapShot(DocumentSnapshot snapshot) =>
      _$CategoryFromJson(snapshot as Map<String, dynamic>);

}
