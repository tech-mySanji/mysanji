import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_details_model.freezed.dart';

@freezed
class UserDetailsModel with _$UserDetailsModel {
  const factory UserDetailsModel(
      {required String name,
      required String address,
      required String pincode}) = _UserDetailsModel;
}
