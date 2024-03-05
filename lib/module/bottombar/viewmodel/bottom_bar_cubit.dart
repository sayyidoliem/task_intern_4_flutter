import 'package:task_intern_3_flutter/import.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(const BottomBarInitial(tabIndex: 0));

  void changeTab(int tabIndex) {
    emit(BottomBarInitial(tabIndex: tabIndex));
  }
}
