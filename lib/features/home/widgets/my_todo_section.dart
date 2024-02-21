import  'package:flutter/material.dart';

import 'my_todo_item.dart';

class MyTODOSection extends StatelessWidget {
  const MyTODOSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My To-do",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                  onPressed: () {} ,
                  child: Row(
                    children: [
                      Text("Hide", style: TextStyle(color: Colors.red.shade400),),
                      Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.red.shade400,
                      )
                    ],
                  )
              ),
            ],
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTODOItem(
                  title: "Add Debit Card",
                  progress: 0.0,
                  onPressed: (){},
                ),
                MyTODOItem(
                  title: "Link your BVN",
                  progress: 0.3,
                  onPressed: (){},
                ),
                MyTODOItem(
                  title: "Dollar Account",
                  progress: 0.6,
                  onPressed: (){},
                ),
                MyTODOItem(
                  title: "Seed Account",
                  progress: 0.9,
                  onPressed: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
