import 'package:flutter/material.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 120, width: 120,
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
          Text(subTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,))
        ],
      ),
    );
  }
}