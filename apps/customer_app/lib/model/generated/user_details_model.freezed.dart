// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsModel {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsModelCopyWith<UserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsModelCopyWith<$Res> {
  factory $UserDetailsModelCopyWith(
          UserDetailsModel value, $Res Function(UserDetailsModel) then) =
      _$UserDetailsModelCopyWithImpl<$Res, UserDetailsModel>;
  @useResult
  $Res call({String name, String address, String pincode});
}

/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res, $Val extends UserDetailsModel>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? pincode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsModelImplCopyWith<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  factory _$$UserDetailsModelImplCopyWith(_$UserDetailsModelImpl value,
          $Res Function(_$UserDetailsModelImpl) then) =
      __$$UserDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String address, String pincode});
}

/// @nodoc
class __$$UserDetailsModelImplCopyWithImpl<$Res>
    extends _$UserDetailsModelCopyWithImpl<$Res, _$UserDetailsModelImpl>
    implements _$$UserDetailsModelImplCopyWith<$Res> {
  __$$UserDetailsModelImplCopyWithImpl(_$UserDetailsModelImpl _value,
      $Res Function(_$UserDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? pincode = null,
  }) {
    return _then(_$UserDetailsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDetailsModelImpl implements _UserDetailsModel {
  const _$UserDetailsModelImpl(
      {required this.name, required this.address, required this.pincode});

  @override
  final String name;
  @override
  final String address;
  @override
  final String pincode;

  @override
  String toString() {
    return 'UserDetailsModel(name: $name, address: $address, pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsModelImplCopyWith<_$UserDetailsModelImpl> get copyWith =>
      __$$UserDetailsModelImplCopyWithImpl<_$UserDetailsModelImpl>(
          this, _$identity);
}

abstract class _UserDetailsModel implements UserDetailsModel {
  const factory _UserDetailsModel(
      {required final String name,
      required final String address,
      required final String pincode}) = _$UserDetailsModelImpl;

  @override
  String get name;
  @override
  String get address;
  @override
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsModelImplCopyWith<_$UserDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
