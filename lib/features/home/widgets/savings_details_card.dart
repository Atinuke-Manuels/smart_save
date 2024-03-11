import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/utils.dart';

import '../block/home_bloc.dart';


class SavingsDetailsCard extends StatelessWidget {
  const SavingsDetailsCard({
    super.key,
    required this.bottomLeftWidget,
    required this.topRightWidget,
    required this.balance,
    this.onPress,
  });

  final Widget bottomLeftWidget;
  final Widget topRightWidget;
  final Widget balance;
  final Function()? onPress;
  
  
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.all(16.0),
        // To make the height more adaptive to various screen sizes.
        // height: MediaQuery.of(context).size.height * 0.19,
        height: 150,
        child: Stack(
          children: [
            ElevatedButton.icon(
              onPressed: () {
              },
              icon: Icon(Icons.add),
              label: Text("Quick save"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  backgroundColor: Colors.deepOrangeAccent,
                  foregroundColor: Colors.deepPurple),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: topRightWidget,
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8)),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                children: [
                  bottomLeftWidget,
                  balance,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
