import 'package:flutter/material.dart';

class AccountTopSection extends StatelessWidget {
  const AccountTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SwitchItems(
            title: Text('Enable Finger Print/Face ID', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
            smallIcon: Icon(Icons.lock_open_sharp, size: 12,),
          ),
          SwitchItems(
            title: Text('Show Dashboard Account Balances' ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          SwitchItems(
            title: Text('Interests Enabled On Savings (Riba)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            smallIcon: Icon(Icons.energy_savings_leaf_outlined, size: 12,),
          ),
        ],
      ),
    );
  }
}

class SwitchItems extends StatelessWidget {
  const SwitchItems({
    super.key,
    required this.title,
    this.smallIcon,
    this.switchFunction,
  });

  final Widget title;
  final Widget? smallIcon;
  final Function ()? switchFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          title,
          // this is to make the icon optional
          if (smallIcon != null) smallIcon!,
        ],
      ),
      trailing: Switch(
        value: true,
        onChanged: (value) {},
        activeColor: Colors.deepPurple.shade300,
      ),
    );
  }
}
