// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManSaleModel _$ManSaleModelFromJson(Map<String, dynamic> json) {
  return _ManSaleModel.fromJson(json);
}

/// @nodoc
mixin _$ManSaleModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get priceBefore => throw _privateConstructorUsedError;
  String get discountPercent => throw _privateConstructorUsedError;
  String get dropLink => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManSaleModelCopyWith<ManSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManSaleModelCopyWith<$Res> {
  factory $ManSaleModelCopyWith(
          ManSaleModel value, $Res Function(ManSaleModel) then) =
      _$ManSaleModelCopyWithImpl<$Res, ManSaleModel>;
  @useResult
  $Res call(
      {String imagePath,
      String name,
      String price,
      String priceBefore,
      String discountPercent,
      String dropLink,
      String description});
}

/// @nodoc
class _$ManSaleModelCopyWithImpl<$Res, $Val extends ManSaleModel>
    implements $ManSaleModelCopyWith<$Res> {
  _$ManSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? price = null,
    Object? priceBefore = null,
    Object? discountPercent = null,
    Object? dropLink = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      priceBefore: null == priceBefore
          ? _value.priceBefore
          : priceBefore // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercent: null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as String,
      dropLink: null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManSaleModelImplCopyWith<$Res>
    implements $ManSaleModelCopyWith<$Res> {
  factory _$$ManSaleModelImplCopyWith(
          _$ManSaleModelImpl value, $Res Function(_$ManSaleModelImpl) then) =
      __$$ManSaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String name,
      String price,
      String priceBefore,
      String discountPercent,
      String dropLink,
      String description});
}

/// @nodoc
class __$$ManSaleModelImplCopyWithImpl<$Res>
    extends _$ManSaleModelCopyWithImpl<$Res, _$ManSaleModelImpl>
    implements _$$ManSaleModelImplCopyWith<$Res> {
  __$$ManSaleModelImplCopyWithImpl(
      _$ManSaleModelImpl _value, $Res Function(_$ManSaleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? price = null,
    Object? priceBefore = null,
    Object? discountPercent = null,
    Object? dropLink = null,
    Object? description = null,
  }) {
    return _then(_$ManSaleModelImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      null == priceBefore
          ? _value.priceBefore
          : priceBefore // ignore: cast_nullable_to_non_nullable
              as String,
      null == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as String,
      null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManSaleModelImpl implements _ManSaleModel {
  _$ManSaleModelImpl(this.imagePath, this.name, this.price, this.priceBefore,
      this.discountPercent, this.dropLink, this.description);

  factory _$ManSaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManSaleModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final String name;
  @override
  final String price;
  @override
  final String priceBefore;
  @override
  final String discountPercent;
  @override
  final String dropLink;
  @override
  final String description;

  @override
  String toString() {
    return 'ManSaleModel(imagePath: $imagePath, name: $name, price: $price, priceBefore: $priceBefore, discountPercent: $discountPercent, dropLink: $dropLink, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManSaleModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceBefore, priceBefore) ||
                other.priceBefore == priceBefore) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.dropLink, dropLink) ||
                other.dropLink == dropLink) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, name, price,
      priceBefore, discountPercent, dropLink, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManSaleModelImplCopyWith<_$ManSaleModelImpl> get copyWith =>
      __$$ManSaleModelImplCopyWithImpl<_$ManSaleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManSaleModelImplToJson(
      this,
    );
  }
}

abstract class _ManSaleModel implements ManSaleModel {
  factory _ManSaleModel(
      final String imagePath,
      final String name,
      final String price,
      final String priceBefore,
      final String discountPercent,
      final String dropLink,
      final String description) = _$ManSaleModelImpl;

  factory _ManSaleModel.fromJson(Map<String, dynamic> json) =
      _$ManSaleModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get name;
  @override
  String get price;
  @override
  String get priceBefore;
  @override
  String get discountPercent;
  @override
  String get dropLink;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ManSaleModelImplCopyWith<_$ManSaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
