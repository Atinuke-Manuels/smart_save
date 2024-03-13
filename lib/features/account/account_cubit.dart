import 'package:flutter_bloc/flutter_bloc.dart';

import 'account_state.dart';

class AccountBloc extends Cubit<AccountState> {
  AccountBloc() : super(AccountState());

  void switchBtnOn() async {
    emit(state.copyWith(switchBtn: true));
  }

  void switchBtnOn2() async {
    emit(state.copyWith(switchBtn2: true));
  }

  void switchBtnOn3() async {
    emit(state.copyWith(switchBtn3: true));
  }

  // function to put off the switch button

  void switchBtnOff() async {
    emit(state.copyWith(switchBtn: false));
  }

  void switchBtnOff2() async {
    emit(state.copyWith(switchBtn2: false));
  }

  void switchBtnOff3() async {
    emit(state.copyWith(switchBtn3: false));
  }

}