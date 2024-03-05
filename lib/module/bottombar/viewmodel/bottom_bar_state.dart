part of 'bottom_bar_cubit.dart';

@immutable
sealed class BottomBarState {
  final int tabIndex;

  const BottomBarState({required this.tabIndex});
}

final class BottomBarInitial extends BottomBarState {
  const BottomBarInitial({required super.tabIndex});
}
