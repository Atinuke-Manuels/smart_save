import 'package:flutter/material.dart';

import '../../../utils.dart';

class InvestDetailsCard extends StatelessWidget {
  const InvestDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Chip(
              label: Text("Up to 35% returns",),
              shape: StadiumBorder(),
          ),
          SizedBox(height: 12,),
          Text("Total Investment", style: TextStyle(color: Colors.white)),
          SizedBox(height: 4,),
          Text('${getNaira()}50000', style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
