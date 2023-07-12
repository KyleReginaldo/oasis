import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(Home());

  void onNavigatePage({required int index}) {
    switch (index) {
      case 0:
        emit(Home());
      case 1:
        emit(Gallery());
      case 2:
        emit(Schedule());
      case 3:
        emit(About());
    }
  }
}
