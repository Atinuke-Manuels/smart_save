import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../account_cubit.dart';
import '../account_state.dart';

class AccountTopSection extends StatefulWidget {
  const AccountTopSection({
    super.key,
  });

  @override
  State<AccountTopSection> createState() => _AccountTopSectionState();
}

class _AccountTopSectionState extends State<AccountTopSection> {
  var switchValue = false;

  var switchValue2 = false;

  var switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    AccountBloc accountBloc = context.watch<AccountBloc>();
    AccountState accountState = accountBloc.state;
    var switchValue = accountState.switchBtn;
    var switchValue2 = accountState.switchBtn2;
    var switchValue3 = accountState.switchBtn3;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SwitchItems(
            title: Text('Enable Finger Print/Face ID', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
            smallIcon: Icon(Icons.lock_open_sharp, size: 12,),
            value: switchValue,
            switchFunction: (value) {
              if(switchValue == false){
                accountBloc.switchBtnOn();
              }else{
                accountBloc.switchBtnOff();
              }
            },
          ),
          SwitchItems(
            title: Text('Show Dashboard Account Balances' ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            value: switchValue2,
            switchFunction: (value) {
              if(switchValue2 == false){
                accountBloc.switchBtnOn2();
              }else{
                accountBloc.switchBtnOff2();
              }
            },
          ),
          SwitchItems(
            title: Text('Interests Enabled On Savings (Riba)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            smallIcon: Icon(Icons.energy_savings_leaf_outlined, size: 12,),
            value: switchValue3,
            switchFunction: (value) {
              if(switchValue3 == false){
                accountBloc.switchBtnOn3();
              }else{
                accountBloc.switchBtnOff3();
              }
            },
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
    this.value,
  });

  final Widget title;
  final Widget? smallIcon;
  final Function (bool)? switchFunction;
  final bool? value;

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
        value: value ?? true,
        onChanged: switchFunction,
        activeColor: Colors.deepPurple.shade300,
      ),
    );
  }
}
