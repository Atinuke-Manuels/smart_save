import 'package:flutter/material.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.deepPurpleAccent,
              unselectedLabelColor: Colors.deepOrange,
              labelColor: Colors.deepPurpleAccent,
              tabs: [
                // Tab(text: "Active", icon: Icon(Icons.airplanemode_active, color: Colors.green,),),
                Tab(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Active"),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.airplanemode_active, color: Colors.green),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Matured"),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.airplanemode_inactive, color: Colors.red),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 400,
              child: TabBarView(children: [
                Container(
                  child: Text("Active investments"),
                ),
                Container(
                  child: Text("Matured investments"),
                ),
              ]),
            )
          ],
        ));
  }
}
