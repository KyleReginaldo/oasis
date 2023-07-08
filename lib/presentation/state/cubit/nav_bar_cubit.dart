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
        emit(Education());
      case 3:
        emit(Hobbies());
      case 4:
        emit(Schedule());
      case 5:
        emit(Resume());
    }
  }
}
