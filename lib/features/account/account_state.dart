import 'package:equatable/equatable.dart';

class AccountState extends Equatable {
  AccountState({
    this.switchBtn = false,
    this.switchBtn2 = false,
    this.switchBtn3 = false,
  });

  final bool switchBtn;
  final bool switchBtn2;
  final bool switchBtn3;

  AccountState copyWith({
    bool? switchBtn,
    bool? switchBtn2,
    bool? switchBtn3,
  }) {
    return AccountState(
      switchBtn: switchBtn ?? this.switchBtn,
      switchBtn2: switchBtn2 ?? this.switchBtn2,
      switchBtn3: switchBtn3 ?? this.switchBtn3,
    );
  }

  @override
  List<Object?> get props => [switchBtn, switchBtn2, switchBtn3];
}

