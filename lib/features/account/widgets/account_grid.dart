import 'package:flutter/material.dart';

class AccountGrid extends StatelessWidget {
  const AccountGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 120,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // column count
            mainAxisExtent: 80, // height of gridView Items
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ListTile(
              title: Text("12345678",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("by SMART BANK",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 10)),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                weight: 800,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: Text(
                "0",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Piggy Points",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 10),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                weight: 800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
