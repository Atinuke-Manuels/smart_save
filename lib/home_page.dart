import 'package:flutter/material.dart';
import 'package:smart_save/account_view.dart';
import 'package:smart_save/home_view.dart';
import 'package:smart_save/invest_view.dart';
import 'package:smart_save/savings_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),
  ];

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Save App"),
      ),
      body: listOfPages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        hoverColor: Colors.deepPurple,
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.white38,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.deepOrange,
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.savings), label: "Save"),
          BottomNavigationBarItem(icon: Icon(Icons.rocket_launch), label: "Invest"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
        ],
      ),
    );
  }
}
