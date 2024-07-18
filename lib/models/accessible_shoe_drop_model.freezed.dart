// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accessible_shoe_drop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccessibleShoeDropModel _$AccessibleShoeDropModelFromJson(
    Map<String, dynamic> json) {
  return _AccessibleShoeDropModel.fromJson(json);
}

/// @nodoc
mixin _$AccessibleShoeDropModel {
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get dropTime => throw _privateConstructorUsedError;
  String get dropLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessibleShoeDropModelCopyWith<AccessibleShoeDropModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessibleShoeDropModelCopyWith<$Res> {
  factory $AccessibleShoeDropModelCopyWith(AccessibleShoeDropModel value,
          $Res Function(AccessibleShoeDropModel) then) =
      _$AccessibleShoeDropModelCopyWithImpl<$Res, AccessibleShoeDropModel>;
  @useResult
  $Res call(
      {String name,
      String price,
      String imagePath,
      String description,
      String dropTime,
      String dropLink});
}

/// @nodoc
class _$AccessibleShoeDropModelCopyWithImpl<$Res,
        $Val extends AccessibleShoeDropModel>
    implements $AccessibleShoeDropModelCopyWith<$Res> {
  _$AccessibleShoeDropModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? imagePath = null,
    Object? description = null,
    Object? dropTime = null,
    Object? dropLink = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dropTime: null == dropTime
          ? _value.dropTime
          : dropTime // ignore: cast_nullable_to_non_nullable
              as String,
      dropLink: null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessibleShoeDropModelImplCopyWith<$Res>
    implements $AccessibleShoeDropModelCopyWith<$Res> {
  factory _$$AccessibleShoeDropModelImplCopyWith(
          _$AccessibleShoeDropModelImpl value,
          $Res Function(_$AccessibleShoeDropModelImpl) then) =
      __$$AccessibleShoeDropModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String price,
      String imagePath,
      String description,
      String dropTime,
      String dropLink});
}

/// @nodoc
class __$$AccessibleShoeDropModelImplCopyWithImpl<$Res>
    extends _$AccessibleShoeDropModelCopyWithImpl<$Res,
        _$AccessibleShoeDropModelImpl>
    implements _$$AccessibleShoeDropModelImplCopyWith<$Res> {
  __$$AccessibleShoeDropModelImplCopyWithImpl(
      _$AccessibleShoeDropModelImpl _value,
      $Res Function(_$AccessibleShoeDropModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? imagePath = null,
    Object? description = null,
    Object? dropTime = null,
    Object? dropLink = null,
  }) {
    return _then(_$AccessibleShoeDropModelImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == dropTime
          ? _value.dropTime
          : dropTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessibleShoeDropModelImpl implements _AccessibleShoeDropModel {
  _$AccessibleShoeDropModelImpl(this.name, this.price, this.imagePath,
      this.description, this.dropTime, this.dropLink);

  factory _$AccessibleShoeDropModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessibleShoeDropModelImplFromJson(json);

  @override
  final String name;
  @override
  final String price;
  @override
  final String imagePath;
  @override
  final String description;
  @override
  final String dropTime;
  @override
  final String dropLink;

  @override
  String toString() {
    return 'AccessibleShoeDropModel(name: $name, price: $price, imagePath: $imagePath, description: $description, dropTime: $dropTime, dropLink: $dropLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessibleShoeDropModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dropTime, dropTime) ||
                other.dropTime == dropTime) &&
            (identical(other.dropLink, dropLink) ||
                other.dropLink == dropLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, price, imagePath, description, dropTime, dropLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessibleShoeDropModelImplCopyWith<_$AccessibleShoeDropModelImpl>
      get copyWith => __$$AccessibleShoeDropModelImplCopyWithImpl<
          _$AccessibleShoeDropModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessibleShoeDropModelImplToJson(
      this,
    );
  }
}

abstract class _AccessibleShoeDropModel implements AccessibleShoeDropModel {
  factory _AccessibleShoeDropModel(
      final String name,
      final String price,
      final String imagePath,
      final String description,
      final String dropTime,
      final String dropLink) = _$AccessibleShoeDropModelImpl;

  factory _AccessibleShoeDropModel.fromJson(Map<String, dynamic> json) =
      _$AccessibleShoeDropModelImpl.fromJson;

  @override
  String get name;
  @override
  String get price;
  @override
  String get imagePath;
  @override
  String get description;
  @override
  String get dropTime;
  @override
  String get dropLink;
  @override
  @JsonKey(ignore: true)
  _$$AccessibleShoeDropModelImplCopyWith<_$AccessibleShoeDropModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
