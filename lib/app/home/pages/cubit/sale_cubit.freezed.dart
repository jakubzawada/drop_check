// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaleState {
  List<ManSaleModel> get manSale => throw _privateConstructorUsedError;
  List<WomanSaleModel> get womanSale => throw _privateConstructorUsedError;
  List<OtherSaleModel> get otherSale => throw _privateConstructorUsedError;
  SaleCategory get selectedCategory => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleStateCopyWith<SaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleStateCopyWith<$Res> {
  factory $SaleStateCopyWith(SaleState value, $Res Function(SaleState) then) =
      _$SaleStateCopyWithImpl<$Res, SaleState>;
  @useResult
  $Res call(
      {List<ManSaleModel> manSale,
      List<WomanSaleModel> womanSale,
      List<OtherSaleModel> otherSale,
      SaleCategory selectedCategory,
      String errorMessage,
      Status status});
}

/// @nodoc
class _$SaleStateCopyWithImpl<$Res, $Val extends SaleState>
    implements $SaleStateCopyWith<$Res> {
  _$SaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manSale = null,
    Object? womanSale = null,
    Object? otherSale = null,
    Object? selectedCategory = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      manSale: null == manSale
          ? _value.manSale
          : manSale // ignore: cast_nullable_to_non_nullable
              as List<ManSaleModel>,
      womanSale: null == womanSale
          ? _value.womanSale
          : womanSale // ignore: cast_nullable_to_non_nullable
              as List<WomanSaleModel>,
      otherSale: null == otherSale
          ? _value.otherSale
          : otherSale // ignore: cast_nullable_to_non_nullable
              as List<OtherSaleModel>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as SaleCategory,
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
abstract class _$$SaleStateImplCopyWith<$Res>
    implements $SaleStateCopyWith<$Res> {
  factory _$$SaleStateImplCopyWith(
          _$SaleStateImpl value, $Res Function(_$SaleStateImpl) then) =
      __$$SaleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ManSaleModel> manSale,
      List<WomanSaleModel> womanSale,
      List<OtherSaleModel> otherSale,
      SaleCategory selectedCategory,
      String errorMessage,
      Status status});
}

/// @nodoc
class __$$SaleStateImplCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res, _$SaleStateImpl>
    implements _$$SaleStateImplCopyWith<$Res> {
  __$$SaleStateImplCopyWithImpl(
      _$SaleStateImpl _value, $Res Function(_$SaleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manSale = null,
    Object? womanSale = null,
    Object? otherSale = null,
    Object? selectedCategory = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$SaleStateImpl(
      manSale: null == manSale
          ? _value._manSale
          : manSale // ignore: cast_nullable_to_non_nullable
              as List<ManSaleModel>,
      womanSale: null == womanSale
          ? _value._womanSale
          : womanSale // ignore: cast_nullable_to_non_nullable
              as List<WomanSaleModel>,
      otherSale: null == otherSale
          ? _value._otherSale
          : otherSale // ignore: cast_nullable_to_non_nullable
              as List<OtherSaleModel>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as SaleCategory,
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

class _$SaleStateImpl implements _SaleState {
  _$SaleStateImpl(
      {final List<ManSaleModel> manSale = const [],
      final List<WomanSaleModel> womanSale = const [],
      final List<OtherSaleModel> otherSale = const [],
      this.selectedCategory = SaleCategory.men,
      this.errorMessage = '',
      this.status = Status.loading})
      : _manSale = manSale,
        _womanSale = womanSale,
        _otherSale = otherSale;

  final List<ManSaleModel> _manSale;
  @override
  @JsonKey()
  List<ManSaleModel> get manSale {
    if (_manSale is EqualUnmodifiableListView) return _manSale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_manSale);
  }

  final List<WomanSaleModel> _womanSale;
  @override
  @JsonKey()
  List<WomanSaleModel> get womanSale {
    if (_womanSale is EqualUnmodifiableListView) return _womanSale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_womanSale);
  }

  final List<OtherSaleModel> _otherSale;
  @override
  @JsonKey()
  List<OtherSaleModel> get otherSale {
    if (_otherSale is EqualUnmodifiableListView) return _otherSale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherSale);
  }

  @override
  @JsonKey()
  final SaleCategory selectedCategory;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'SaleState(manSale: $manSale, womanSale: $womanSale, otherSale: $otherSale, selectedCategory: $selectedCategory, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleStateImpl &&
            const DeepCollectionEquality().equals(other._manSale, _manSale) &&
            const DeepCollectionEquality()
                .equals(other._womanSale, _womanSale) &&
            const DeepCollectionEquality()
                .equals(other._otherSale, _otherSale) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_manSale),
      const DeepCollectionEquality().hash(_womanSale),
      const DeepCollectionEquality().hash(_otherSale),
      selectedCategory,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleStateImplCopyWith<_$SaleStateImpl> get copyWith =>
      __$$SaleStateImplCopyWithImpl<_$SaleStateImpl>(this, _$identity);
}

abstract class _SaleState implements SaleState {
  factory _SaleState(
      {final List<ManSaleModel> manSale,
      final List<WomanSaleModel> womanSale,
      final List<OtherSaleModel> otherSale,
      final SaleCategory selectedCategory,
      final String errorMessage,
      final Status status}) = _$SaleStateImpl;

  @override
  List<ManSaleModel> get manSale;
  @override
  List<WomanSaleModel> get womanSale;
  @override
  List<OtherSaleModel> get otherSale;
  @override
  SaleCategory get selectedCategory;
  @override
  String get errorMessage;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$SaleStateImplCopyWith<_$SaleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
