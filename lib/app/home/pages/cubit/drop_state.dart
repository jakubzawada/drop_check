part of 'drop_cubit.dart';

@immutable
class DropState {
  final List<ShoeDropModel> shoe;
  final List<AccessibleShoeDropModel> accessibleShoe;
  final bool showAccessible;
  final String errorMessage;
  final Status status;

  const DropState({
    required this.shoe,
    required this.accessibleShoe,
    required this.showAccessible,
    required this.errorMessage,
    required this.status,
  });

  DropState copyWith({
    List<ShoeDropModel>? shoe,
    List<AccessibleShoeDropModel>? accessibleShoe,
    bool? showAccessible,
    String? errorMessage,
    Status? status,
  }) {
    return DropState(
      shoe: shoe ?? this.shoe,
      accessibleShoe: accessibleShoe ?? this.accessibleShoe,
      showAccessible: showAccessible ?? this.showAccessible,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }
}
