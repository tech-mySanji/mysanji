import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';

part 'generated/user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({required String userId}) = _User;

  factory UserModel.fromSnapShot(DocumentSnapshot json) =>
      _$UserModelFromJson(json as Map<String, dynamic>);
}
