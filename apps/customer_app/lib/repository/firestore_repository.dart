import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_app/model/category.dart';
import 'package:customer_app/model/user_details_model.dart';

import '../model/user.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getFirebaseData(String branchId) {
   return _firestore.collection('branches').doc(branchId).collection('categories').snapshots();
  }

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

  Future<List<Category>> getAllCategories() async {
    String branchId = '1Z2HPXhhb5ehUk0hNuIg'; //
    QuerySnapshot categories = await _firestore.collection('branches').doc(branchId).collection('categories').get();

    print(categories.docs);
    var response = Category.getModelsFromSnapshot(categories);
    return response;
  }

  // Future<void> createTestCategory() async {
  //   await _firestore
  //       .collection('branch1')
  //       .doc('categories')
  //       .collection('category1')
  //       .add({
  //     'name': 'category1',
  //     'description': 'description1',
  //     'image': 'image1',
  //   });
  //
  //   await _firestore
  //       .collection('branch1')
  //       .doc('categories')
  //       .collection('category2')
  //       .add({
  //     'name': 'category2',
  //     'description': 'description2',
  //     'image': 'image2',
  //   });
  // }
}
