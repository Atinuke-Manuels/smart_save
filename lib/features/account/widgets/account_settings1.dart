import 'package:flutter/material.dart';

import 'account_setting_item.dart';

class AccountSettings1 extends StatelessWidget {
  const AccountSettings1({
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
          AccountSettingsItem(
            leadingIcons: Icon(Icons.percent),
            title: "Today's Rate",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.settings),
            title: "My Account Setting",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.settings),
            title: "Generate Account Statement",
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.swap_horiz),
            title: "Change Theme",
            trailingIcons: Switch(
              value: false,
              onChanged: (value) {},
              activeColor: Colors.deepPurple.shade300,
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Row(
              children: [
                Text(
                  "Self Help",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Icon(
                  Icons.energy_savings_leaf_outlined,
                  size: 14,
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            leadingIcons: Icon(Icons.lock),
            title: "Security",
          ),
        ],
      ),
    );
  }
}
