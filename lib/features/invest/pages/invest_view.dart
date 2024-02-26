import  'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/vetted_opportunities_section.dart';
import 'package:smart_save/features/invest/widgets/invest_view_card.dart';
import 'package:smart_save/features/invest/widgets/tab_section.dart';

class InvestView extends StatelessWidget {
  const InvestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Investments"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.info_outline_rounded))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
            InvestDetailsCard(),
            Divider(),
            VettedOpportunitiesSection(),
            TabSection()
        ],
      ),
    );
  }
}