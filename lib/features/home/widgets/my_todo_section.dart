import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../block/home_bloc.dart';
import '../block/home_state.dart';
import 'hide_todo_list.dart';
import 'my_todo_item.dart';

class MyTODOSection extends StatelessWidget {
  const MyTODOSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My To-do",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                  onPressed: () {
                    // Toggle the visibility of the todo list
                    if (homeBloc.state.hideTodo) {
                      homeBloc.showTodoList();
                    } else {
                      // homeBloc.hideTodoList();
                      // Show the bottom sheet when hiding the todo list
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (context) {
                          return HideToDOList();
                        },
                      );
                    }
                  },
                  child: Row(
                    children: [
                        Text(homeBloc.state.hideTodo ? 'Show' : "Hide",
                        style: homeBloc.state.hideTodo ? TextStyle(color: Colors.purple.shade400) : TextStyle(color: Colors.red.shade400),
                      ),
                      SizedBox(width: 8,),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: homeBloc.state.hideTodo ? Colors.purple.shade400 : Colors.red.shade400,
                      )
                    ],
                  )),
            ],
          ),
          homeState.hideTodo == true ? Container() :  SizedBox(
            // height: MediaQuery.of(context).size.height * 0.18,
            height: 128,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTODOItem(
                  title: "Add Debit Card",
                  progress: 0.0,
                  onPressed: () {},
                ),
                MyTODOItem(
                  title: "Link your BVN",
                  progress: 0.3,
                  onPressed: () {},
                ),
                MyTODOItem(
                  title: "Dollar Account",
                  progress: 0.6,
                  onPressed: () {},
                ),
                MyTODOItem(
                  title: "Seed Account",
                  progress: 0.9,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

