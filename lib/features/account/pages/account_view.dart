import 'package:flutter/material.dart';
import 'package:smart_save/features/account/widgets/account_settings1.dart';
import 'package:smart_save/features/account/widgets/account_settings2.dart';

import '../widgets/account_grid.dart';
import '../widgets/account_top_section.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Account,", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              "Atinuke Adeshola-Manuels",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            )
          ],
        ),
        actions: [
          IconButton(
              color: Colors.deepPurple,
              onPressed: () {},
              icon: Icon(
                Icons.person_pin_circle_outlined,
                size: 40,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: [
          AccountTopSection(),
          AccountGrid(),
          AccountSettings1(),
          SizedBox(
            height: 20,
          ),
          AccountSettings2()
        ],
      ),
    );
  }
}
