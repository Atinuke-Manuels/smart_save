import 'package:flutter/material.dart';

class AccountSettingsItem extends StatelessWidget {
  const AccountSettingsItem(
      {super.key,
      required this.title,
      required this.leadingIcons,
      this.trailingIcons = const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      )});

  final String title;
  final Icon leadingIcons;
  final Widget? trailingIcons;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: leadingIcons,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        trailing: trailingIcons);
  }
}
