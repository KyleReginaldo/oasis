import 'package:flutter_bloc/flutter_bloc.dart';

class HoverPersonCubit extends Cubit<bool> {
  HoverPersonCubit() : super(false);

  void onHover({required bool hover}) {
    emit(hover);
  }
}
