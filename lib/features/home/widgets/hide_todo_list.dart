import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/home/block/home_bloc.dart';

class HideToDOList extends StatelessWidget {
  const HideToDOList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/bankLogo.png", height: 100, width: 100,),
          SizedBox(height: 24,),
          Text(
              "Hide To-Do List",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          SizedBox(height: 24,),
          Text("Temporarily Hide All To-Do List Till Tomorrow"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(),
          ),
          ElevatedButton(
              onPressed: (
                  ) {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Remind Me Later"),
                        content: Text("Are you sure you want to hide your To-Do List till tomorrow?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                context.read<HomeBloc>().hideTodoList();
                              },
                              child: Text("Yes remove it")
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Close")
                          ),
                        ],
                      );
                    }
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.9,
                    55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                side: BorderSide(color: Colors.deepPurple.shade800, width: 2)
              ),
              child: Text(
                  "Hide To-Do List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),

              )
          )
        ],
      ),
    );
  }
}
