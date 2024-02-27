import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_app/model/category.dart';
import 'package:customer_app/model/user_details_model.dart';

import '../model/user.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel> fetchCurrentUser(String userId) async {
    DocumentSnapshot userDoc =
        await _firestore.collection('users').doc(userId).get();
    return UserModel.fromSnapShot(userDoc);
  }

  Future<void> createUserDetails(
      UserDetailsModel userDetails, String userId) async {
    await _firestore.collection('users').doc(userId).set({
      'id': userId,
      'name': userDetails.name,
      'address': userDetails.address,
      'pincode': userDetails.pincode,
    });
  }

  Future<Category> getAllCategories() async {
    final categories =
        await _firestore.collection('branch1').doc('categories').get();
    return Category.fromSnapShot(categories);
  }

  Future<void> createTestCategory() async {
    await _firestore
        .collection('branch1')
        .doc('categories')
        .collection('category1')
        .add({
      'name': 'category1',
      'description': 'description1',
      'image': 'image1',
    });

    await _firestore
        .collection('branch1')
        .doc('categories')
        .collection('category2')
        .add({
      'name': 'category2',
      'description': 'description2',
      'image': 'image2',
    });
  }
}
