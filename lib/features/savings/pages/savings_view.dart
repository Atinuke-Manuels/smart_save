import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/savings_details_card.dart';
import 'package:smart_save/features/savings/widgets/flexible_savings_section.dart';
import 'package:smart_save/features/savings/widgets/strict_savings_section.dart';

import '../widgets/strict_savings_item.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "My Savings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline_rounded))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SavingsDetailsCard(
            topRightWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Up to 13% returns",
                  style: TextStyle(color: Colors.deepOrangeAccent),
                ),
              ],
            ),
            bottomLeftWidget: Text(
              "My savings",
              style: TextStyle(color: Colors.white),
            ),
            balance: Text(
              '\$240000',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          StrictSavingsSection(),
          FlexibleSavingsSection(),
        ],
      ),
    );
  }
}
