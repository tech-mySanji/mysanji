import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_app/model/user_details_model.dart';

import '../model/user.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel> fetchCurrentUser(String userId) async {
    DocumentSnapshot userDoc =
        await _firestore.collection('users').doc(userId).get();
    return UserModel.fromJson(userDoc);
  }

  Future<void> createUserDetails(UserDetailsModel userDetails, String userId) async {
    await _firestore.collection('users').doc(userId).set({
      'id': userId,
      'name': userDetails.name,
      'address': userDetails.address,
      'pincode': userDetails.pincode,
    });
  }
}
