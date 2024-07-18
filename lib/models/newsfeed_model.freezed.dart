// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsfeed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsfeedModel _$NewsfeedModelFromJson(Map<String, dynamic> json) {
  return _NewsfeedModel.fromJson(json);
}

/// @nodoc
mixin _$NewsfeedModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get dropLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsfeedModelCopyWith<NewsfeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsfeedModelCopyWith<$Res> {
  factory $NewsfeedModelCopyWith(
          NewsfeedModel value, $Res Function(NewsfeedModel) then) =
      _$NewsfeedModelCopyWithImpl<$Res, NewsfeedModel>;
  @useResult
  $Res call({String imagePath, String dropLink});
}

/// @nodoc
class _$NewsfeedModelCopyWithImpl<$Res, $Val extends NewsfeedModel>
    implements $NewsfeedModelCopyWith<$Res> {
  _$NewsfeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? dropLink = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      dropLink: null == dropLink
          ? _value.dropLink
          : dropLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsfeedModelImplCopyWith<$Res>
    implements $NewsfeedModelCopyWith<$Res> {
  factory _$$NewsfeedModelImplCopyWith(
          _$NewsfeedModelImpl value, $Res Function(_$NewsfeedModelImpl) then) =
      __$$NewsfeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String dropLink});
}

/// @nodoc
class __$$NewsfeedModelImplCopyWithImpl<$Res>
    extends _$NewsfeedModelCopyWithImpl<$Res, _$NewsfeedModelImpl>
    implements _$$NewsfeedModelImplCopyWith<$Res> {
  __$$NewsfeedModelImplCopyWithImpl(
      _$NewsfeedModelImpl _value, $Res Function(_$NewsfeedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? dropLink = null,
  }) {
    return _then(_$NewsfeedModelImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
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
class _$NewsfeedModelImpl implements _NewsfeedModel {
  _$NewsfeedModelImpl(this.imagePath, this.dropLink);

  factory _$NewsfeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsfeedModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final String dropLink;

  @override
  String toString() {
    return 'NewsfeedModel(imagePath: $imagePath, dropLink: $dropLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsfeedModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.dropLink, dropLink) ||
                other.dropLink == dropLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, dropLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsfeedModelImplCopyWith<_$NewsfeedModelImpl> get copyWith =>
      __$$NewsfeedModelImplCopyWithImpl<_$NewsfeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsfeedModelImplToJson(
      this,
    );
  }
}

abstract class _NewsfeedModel implements NewsfeedModel {
  factory _NewsfeedModel(final String imagePath, final String dropLink) =
      _$NewsfeedModelImpl;

  factory _NewsfeedModel.fromJson(Map<String, dynamic> json) =
      _$NewsfeedModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get dropLink;
  @override
  @JsonKey(ignore: true)
  _$$NewsfeedModelImplCopyWith<_$NewsfeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
