import 'package:flutter/material.dart';

class TopSavingsItem extends StatelessWidget {
  const TopSavingsItem({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onPress,
    required this.child,
    this.titleTextStyle,
    this.subTextStyle,
  });

  final Image leading;
  final String title;
  final String subtitle;
  final Function() onPress;
  final String child;
  final TextStyle? titleTextStyle;
  final TextStyle? subTextStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title, style: titleTextStyle,),
      subtitle: Text(subtitle, style: subTextStyle,),
      trailing: ElevatedButton(
        onPressed: onPress,
        child: Text(child),
      ),
    );
  }
}