// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoe_drop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoeDropModel _$ShoeDropModelFromJson(Map<String, dynamic> json) {
  return _ShoeDropModel.fromJson(json);
}

/// @nodoc
mixin _$ShoeDropModel {
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get dropTime => throw _privateConstructorUsedError;
  String get dropLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoeDropModelCopyWith<ShoeDropModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoeDropModelCopyWith<$Res> {
  factory $ShoeDropModelCopyWith(
          ShoeDropModel value, $Res Function(ShoeDropModel) then) =
      _$ShoeDropModelCopyWithImpl<$Res, ShoeDropModel>;
  @useResult
  $Res call(
      {String name,
      String price,
      String imagePath,
      String description,
      @TimestampSerializer() DateTime dropTime,
      String dropLink});
}

/// @nodoc
class _$ShoeDropModelCopyWithImpl<$Res, $Val extends ShoeDropModel>
    implements $ShoeDropModelCopyWith<$Res> {
  _$ShoeDropModelCopyWithImpl(this._value, this._then);

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
              as DateTime,
      dropLink: null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoeDropModelImplCopyWith<$Res>
    implements $ShoeDropModelCopyWith<$Res> {
  factory _$$ShoeDropModelImplCopyWith(
          _$ShoeDropModelImpl value, $Res Function(_$ShoeDropModelImpl) then) =
      __$$ShoeDropModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String price,
      String imagePath,
      String description,
      @TimestampSerializer() DateTime dropTime,
      String dropLink});
}

/// @nodoc
class __$$ShoeDropModelImplCopyWithImpl<$Res>
    extends _$ShoeDropModelCopyWithImpl<$Res, _$ShoeDropModelImpl>
    implements _$$ShoeDropModelImplCopyWith<$Res> {
  __$$ShoeDropModelImplCopyWithImpl(
      _$ShoeDropModelImpl _value, $Res Function(_$ShoeDropModelImpl) _then)
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
    return _then(_$ShoeDropModelImpl(
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
              as DateTime,
      null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoeDropModelImpl implements _ShoeDropModel {
  _$ShoeDropModelImpl(this.name, this.price, this.imagePath, this.description,
      @TimestampSerializer() this.dropTime, this.dropLink);

  factory _$ShoeDropModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoeDropModelImplFromJson(json);

  @override
  final String name;
  @override
  final String price;
  @override
  final String imagePath;
  @override
  final String description;
  @override
  @TimestampSerializer()
  final DateTime dropTime;
  @override
  final String dropLink;

  @override
  String toString() {
    return 'ShoeDropModel(name: $name, price: $price, imagePath: $imagePath, description: $description, dropTime: $dropTime, dropLink: $dropLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoeDropModelImpl &&
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
  _$$ShoeDropModelImplCopyWith<_$ShoeDropModelImpl> get copyWith =>
      __$$ShoeDropModelImplCopyWithImpl<_$ShoeDropModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoeDropModelImplToJson(
      this,
    );
  }
}

abstract class _ShoeDropModel implements ShoeDropModel {
  factory _ShoeDropModel(
      final String name,
      final String price,
      final String imagePath,
      final String description,
      @TimestampSerializer() final DateTime dropTime,
      final String dropLink) = _$ShoeDropModelImpl;

  factory _ShoeDropModel.fromJson(Map<String, dynamic> json) =
      _$ShoeDropModelImpl.fromJson;

  @override
  String get name;
  @override
  String get price;
  @override
  String get imagePath;
  @override
  String get description;
  @override
  @TimestampSerializer()
  DateTime get dropTime;
  @override
  String get dropLink;
  @override
  @JsonKey(ignore: true)
  _$$ShoeDropModelImplCopyWith<_$ShoeDropModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
