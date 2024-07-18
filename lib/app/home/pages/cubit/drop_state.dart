part of 'drop_cubit.dart';

@freezed
class DropState with _$DropState {
  factory DropState({
    @Default([]) List<ShoeDropModel> shoe,
    @Default([]) List<AccessibleShoeDropModel> accessibleShoe,
    @Default(false) bool showAccessible,
    @Default('') String errorMessage,
    @Default(Status.loading) Status status,
  }) = _DropState;
}
