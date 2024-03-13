
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/product.freezed.dart';

part 'generated/product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    required String description,
    required String imgUrl,
    required double price,
    required String subCategoryId,
    required String categoryId,
    required String vendorId
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  static Future<List<ProductModel>> getModelsFromSnapshot(QuerySnapshot snapshot) async {
    List<ProductModel> categories = [];
    for (DocumentSnapshot doc in snapshot.docs) {
      categories.add(ProductModel.fromJson(doc.data() as Map<String, dynamic>));
    }
    return categories;
  }

  static Stream<List<ProductModel>> productsStream(
      Stream<QuerySnapshot<Map<String, dynamic>>> stream) async* {
    await for (QuerySnapshot<Map<String, dynamic>> snapshot in stream) {
      yield snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList();
    }
  }
}