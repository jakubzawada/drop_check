// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropState {
  List<ShoeDropModel> get shoe => throw _privateConstructorUsedError;
  List<AccessibleShoeDropModel> get accessibleShoe =>
      throw _privateConstructorUsedError;
  bool get showAccessible => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropStateCopyWith<DropState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropStateCopyWith<$Res> {
  factory $DropStateCopyWith(DropState value, $Res Function(DropState) then) =
      _$DropStateCopyWithImpl<$Res, DropState>;
  @useResult
  $Res call(
      {List<ShoeDropModel> shoe,
      List<AccessibleShoeDropModel> accessibleShoe,
      bool showAccessible,
      String errorMessage,
      Status status});
}

/// @nodoc
class _$DropStateCopyWithImpl<$Res, $Val extends DropState>
    implements $DropStateCopyWith<$Res> {
  _$DropStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoe = null,
    Object? accessibleShoe = null,
    Object? showAccessible = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      shoe: null == shoe
          ? _value.shoe
          : shoe // ignore: cast_nullable_to_non_nullable
              as List<ShoeDropModel>,
      accessibleShoe: null == accessibleShoe
          ? _value.accessibleShoe
          : accessibleShoe // ignore: cast_nullable_to_non_nullable
              as List<AccessibleShoeDropModel>,
      showAccessible: null == showAccessible
          ? _value.showAccessible
          : showAccessible // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropStateImplCopyWith<$Res>
    implements $DropStateCopyWith<$Res> {
  factory _$$DropStateImplCopyWith(
          _$DropStateImpl value, $Res Function(_$DropStateImpl) then) =
      __$$DropStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoeDropModel> shoe,
      List<AccessibleShoeDropModel> accessibleShoe,
      bool showAccessible,
      String errorMessage,
      Status status});
}

/// @nodoc
class __$$DropStateImplCopyWithImpl<$Res>
    extends _$DropStateCopyWithImpl<$Res, _$DropStateImpl>
    implements _$$DropStateImplCopyWith<$Res> {
  __$$DropStateImplCopyWithImpl(
      _$DropStateImpl _value, $Res Function(_$DropStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoe = null,
    Object? accessibleShoe = null,
    Object? showAccessible = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$DropStateImpl(
      shoe: null == shoe
          ? _value._shoe
          : shoe // ignore: cast_nullable_to_non_nullable
              as List<ShoeDropModel>,
      accessibleShoe: null == accessibleShoe
          ? _value._accessibleShoe
          : accessibleShoe // ignore: cast_nullable_to_non_nullable
              as List<AccessibleShoeDropModel>,
      showAccessible: null == showAccessible
          ? _value.showAccessible
          : showAccessible // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$DropStateImpl implements _DropState {
  _$DropStateImpl(
      {final List<ShoeDropModel> shoe = const [],
      final List<AccessibleShoeDropModel> accessibleShoe = const [],
      this.showAccessible = false,
      this.errorMessage = '',
      this.status = Status.loading})
      : _shoe = shoe,
        _accessibleShoe = accessibleShoe;

  final List<ShoeDropModel> _shoe;
  @override
  @JsonKey()
  List<ShoeDropModel> get shoe {
    if (_shoe is EqualUnmodifiableListView) return _shoe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoe);
  }

  final List<AccessibleShoeDropModel> _accessibleShoe;
  @override
  @JsonKey()
  List<AccessibleShoeDropModel> get accessibleShoe {
    if (_accessibleShoe is EqualUnmodifiableListView) return _accessibleShoe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessibleShoe);
  }

  @override
  @JsonKey()
  final bool showAccessible;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'DropState(shoe: $shoe, accessibleShoe: $accessibleShoe, showAccessible: $showAccessible, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropStateImpl &&
            const DeepCollectionEquality().equals(other._shoe, _shoe) &&
            const DeepCollectionEquality()
                .equals(other._accessibleShoe, _accessibleShoe) &&
            (identical(other.showAccessible, showAccessible) ||
                other.showAccessible == showAccessible) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shoe),
      const DeepCollectionEquality().hash(_accessibleShoe),
      showAccessible,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropStateImplCopyWith<_$DropStateImpl> get copyWith =>
      __$$DropStateImplCopyWithImpl<_$DropStateImpl>(this, _$identity);
}

abstract class _DropState implements DropState {
  factory _DropState(
      {final List<ShoeDropModel> shoe,
      final List<AccessibleShoeDropModel> accessibleShoe,
      final bool showAccessible,
      final String errorMessage,
      final Status status}) = _$DropStateImpl;

  @override
  List<ShoeDropModel> get shoe;
  @override
  List<AccessibleShoeDropModel> get accessibleShoe;
  @override
  bool get showAccessible;
  @override
  String get errorMessage;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$DropStateImplCopyWith<_$DropStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
