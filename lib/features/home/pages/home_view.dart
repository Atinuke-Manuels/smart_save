import  'package:flutter/material.dart';
import 'package:smart_save/features/home/widgets/vetted_opportunities_section.dart';

import '../widgets/my_todo_section.dart';
import '../widgets/savings_details_card.dart';
import '../widgets/suggestion_section.dart';
import '../widgets/top_savings_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Hello Atinuke",
                style: TextStyle(fontWeight: FontWeight.bold)
            ),
            Text(
                "Do more with your Finances",
                style: TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: [
          IconButton(
              color: Colors.deepPurple,
              onPressed: (){},
              icon: Icon(Icons.account_circle, size: 40,))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SavingsDetailsCard(),
          MyTODOSection(),
          TopSavingsSection(),
          SuggestionSection(),
          VettedOpportunitiesSection()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        hoverColor: Colors.deepPurple,
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.white38,),
        shape: CircleBorder(),
      ),
    );
  }
}



