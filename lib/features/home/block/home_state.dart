import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  HomeState({
    this.tabIndex = 0,
    this.hideTodo = false,
  });

  final int tabIndex;
  final bool hideTodo;

  HomeState copyWith({
    int? tabIndex,
    bool? hideTodo,
  }) {
    return HomeState(
      tabIndex: tabIndex ?? this.tabIndex,
      hideTodo: hideTodo ?? this.hideTodo,
    );
  }

  @override
  List<Object?> get props => [tabIndex, hideTodo];
}



//
// import 'package:equatable/equatable.dart';
//
// class HomeState extends Equatable{
// HomeState({
//
//   this.tabIndex = 0,
//   this.hideTodo = false,
// });
//
// final int tabIndex;
// final bool hideTodo;
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [
//     tabIndex,
//     hideTodo
//   ];
//
// }