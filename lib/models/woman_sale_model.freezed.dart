// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'woman_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WomanSaleModel _$WomanSaleModelFromJson(Map<String, dynamic> json) {
  return _WomanSaleModel.fromJson(json);
}

/// @nodoc
mixin _$WomanSaleModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get priceBefore => throw _privateConstructorUsedError;
  String get discountPercent => throw _privateConstructorUsedError;
  String get dropLink => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WomanSaleModelCopyWith<WomanSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WomanSaleModelCopyWith<$Res> {
  factory $WomanSaleModelCopyWith(
          WomanSaleModel value, $Res Function(WomanSaleModel) then) =
      _$WomanSaleModelCopyWithImpl<$Res, WomanSaleModel>;
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
class _$WomanSaleModelCopyWithImpl<$Res, $Val extends WomanSaleModel>
    implements $WomanSaleModelCopyWith<$Res> {
  _$WomanSaleModelCopyWithImpl(this._value, this._then);

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
abstract class _$$WomanSaleModelImplCopyWith<$Res>
    implements $WomanSaleModelCopyWith<$Res> {
  factory _$$WomanSaleModelImplCopyWith(_$WomanSaleModelImpl value,
          $Res Function(_$WomanSaleModelImpl) then) =
      __$$WomanSaleModelImplCopyWithImpl<$Res>;
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
class __$$WomanSaleModelImplCopyWithImpl<$Res>
    extends _$WomanSaleModelCopyWithImpl<$Res, _$WomanSaleModelImpl>
    implements _$$WomanSaleModelImplCopyWith<$Res> {
  __$$WomanSaleModelImplCopyWithImpl(
      _$WomanSaleModelImpl _value, $Res Function(_$WomanSaleModelImpl) _then)
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
    return _then(_$WomanSaleModelImpl(
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
class _$WomanSaleModelImpl implements _WomanSaleModel {
  _$WomanSaleModelImpl(this.imagePath, this.name, this.price, this.priceBefore,
      this.discountPercent, this.dropLink, this.description);

  factory _$WomanSaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WomanSaleModelImplFromJson(json);

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
    return 'WomanSaleModel(imagePath: $imagePath, name: $name, price: $price, priceBefore: $priceBefore, discountPercent: $discountPercent, dropLink: $dropLink, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WomanSaleModelImpl &&
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
  _$$WomanSaleModelImplCopyWith<_$WomanSaleModelImpl> get copyWith =>
      __$$WomanSaleModelImplCopyWithImpl<_$WomanSaleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WomanSaleModelImplToJson(
      this,
    );
  }
}

abstract class _WomanSaleModel implements WomanSaleModel {
  factory _WomanSaleModel(
      final String imagePath,
      final String name,
      final String price,
      final String priceBefore,
      final String discountPercent,
      final String dropLink,
      final String description) = _$WomanSaleModelImpl;

  factory _WomanSaleModel.fromJson(Map<String, dynamic> json) =
      _$WomanSaleModelImpl.fromJson;

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
  _$$WomanSaleModelImplCopyWith<_$WomanSaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
