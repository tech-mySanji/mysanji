import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/category.freezed.dart';

part 'generated/category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    String? desc,
    String? img_url,
  }) = _Category;

  factory Category.fromSnapShot(DocumentSnapshot snapshot) =>
      _$CategoryFromJson(snapshot as Map<String, dynamic>);

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);

  static Future<List<Category>> getModelsFromSnapshot(QuerySnapshot snapshot) async {
    List<Category> categories = [];
    for (DocumentSnapshot doc in snapshot.docs) {
      categories.add(Category.fromJson(doc.data() as Map<String, dynamic>));
    }
    return categories;
  }

  static Stream<List<Category>> categoriesStream(
      Stream<QuerySnapshot<Map<String, dynamic>>> stream) async* {
    await for (QuerySnapshot<Map<String, dynamic>> snapshot in stream) {
      yield snapshot.docs
          .map((doc) => Category.fromJson(doc.data()))
          .toList();
    }
  }

}
