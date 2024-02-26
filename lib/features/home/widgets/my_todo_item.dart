import 'package:flutter/material.dart';

class MyTODOItem extends StatelessWidget {
  const MyTODOItem({
    super.key,
    required this.title,
    required this.progress,
    required this.onPressed,
  });

  final String title;
  final double progress;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          LinearProgressIndicator(
            value: progress,
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
              ))
        ],
      ),
    );
  }
}
