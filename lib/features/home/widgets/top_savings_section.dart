import 'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/top_savings_item.dart';

class TopSavingsSection extends StatelessWidget {
  const TopSavingsSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Savings",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          TopSavingsItem(
            leading: Image.asset("assets/images/shield.png",),
            title: "Piggybank",
            subtitle: "Auto save: Daily weekly or monthly",
            onPress: () {},
            child: "SAVE",
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            subTextStyle: TextStyle(color: Colors.grey.shade500),
            ),
          TopSavingsItem(
            leading: Image.asset("assets/images/lock.png"),
            title: "SafeLock",
            subtitle: "Lock funds to avoid temptations",
            onPress: () {},
            child: "LOCK",
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            subTextStyle: TextStyle(color: Colors.grey.shade500),
          ),
          TopSavingsItem(
            leading: Image.asset("assets/images/wallet.png"),
            title: "Flex Naira",
            subtitle: "Your emergency funds with interests",
            onPress: () {},
            child: "FUND",
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            subTextStyle: TextStyle(color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}

