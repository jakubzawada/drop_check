// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsState {
  List<BestSaleModel> get bestSale => throw _privateConstructorUsedError;
  List<NewsfeedModel> get newsfeed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {List<BestSaleModel> bestSale,
      List<NewsfeedModel> newsfeed,
      String errorMessage,
      Status status});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSale = null,
    Object? newsfeed = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      bestSale: null == bestSale
          ? _value.bestSale
          : bestSale // ignore: cast_nullable_to_non_nullable
              as List<BestSaleModel>,
      newsfeed: null == newsfeed
          ? _value.newsfeed
          : newsfeed // ignore: cast_nullable_to_non_nullable
              as List<NewsfeedModel>,
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
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BestSaleModel> bestSale,
      List<NewsfeedModel> newsfeed,
      String errorMessage,
      Status status});
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSale = null,
    Object? newsfeed = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$NewsStateImpl(
      bestSale: null == bestSale
          ? _value._bestSale
          : bestSale // ignore: cast_nullable_to_non_nullable
              as List<BestSaleModel>,
      newsfeed: null == newsfeed
          ? _value._newsfeed
          : newsfeed // ignore: cast_nullable_to_non_nullable
              as List<NewsfeedModel>,
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

class _$NewsStateImpl implements _NewsState {
  _$NewsStateImpl(
      {final List<BestSaleModel> bestSale = const [],
      final List<NewsfeedModel> newsfeed = const [],
      this.errorMessage = '',
      this.status = Status.loading})
      : _bestSale = bestSale,
        _newsfeed = newsfeed;

  final List<BestSaleModel> _bestSale;
  @override
  @JsonKey()
  List<BestSaleModel> get bestSale {
    if (_bestSale is EqualUnmodifiableListView) return _bestSale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSale);
  }

  final List<NewsfeedModel> _newsfeed;
  @override
  @JsonKey()
  List<NewsfeedModel> get newsfeed {
    if (_newsfeed is EqualUnmodifiableListView) return _newsfeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsfeed);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'NewsState(bestSale: $bestSale, newsfeed: $newsfeed, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            const DeepCollectionEquality().equals(other._bestSale, _bestSale) &&
            const DeepCollectionEquality().equals(other._newsfeed, _newsfeed) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bestSale),
      const DeepCollectionEquality().hash(_newsfeed),
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  factory _NewsState(
      {final List<BestSaleModel> bestSale,
      final List<NewsfeedModel> newsfeed,
      final String errorMessage,
      final Status status}) = _$NewsStateImpl;

  @override
  List<BestSaleModel> get bestSale;
  @override
  List<NewsfeedModel> get newsfeed;
  @override
  String get errorMessage;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
