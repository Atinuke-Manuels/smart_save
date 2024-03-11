import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/home/block/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState());

  void updateTabIndex(int newIndex) async {
    emit(state.copyWith(tabIndex: newIndex));
  }

  void hideTodoList() async {
    emit(state.copyWith(hideTodo: true));
  }

  void showTodoList() async {
    emit(state.copyWith(hideTodo: false));
  }
}


