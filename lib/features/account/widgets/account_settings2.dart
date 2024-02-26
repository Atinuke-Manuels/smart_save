import 'package:flutter/material.dart';

import 'account_setting_item.dart';

class AccountSettings2 extends StatelessWidget {
  const AccountSettings2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.card_giftcard, color: Colors.blue,),
            title: Row(
              children: [
                Text(
                  "Refer & Earn",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(width: 24,),
                TextButton(
                  onPressed: () {},
                  child: Text("N1,000 EACH", style: TextStyle(color: Colors.blue.shade800, fontSize: 10, fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade100),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(8)),
                  ),
                ),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.settings),
            title: "Withdraw Funds",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.lock_clock_rounded),
            title: "Linked Debit Card",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.settings),
            title: "Withdrawal Bank",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.settings),
            title: "View PiggyVest Library",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.lock),
            title: "Change App Icon",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.phone),
            title: "Contact Us",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: Icon(Icons.swap_horiz_outlined),
            title: Text(
              "Check For Updates",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.red,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.red.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
