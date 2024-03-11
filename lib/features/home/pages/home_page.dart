import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/home/block/home_bloc.dart';
import 'package:smart_save/features/home/block/home_state.dart';
import 'package:smart_save/features/invest/pages/invest_view.dart';
import 'package:smart_save/features/savings/pages/savings_view.dart';
import '../../account/pages/account_view.dart';
import 'home_view.dart';

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
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    var selectedIndex = homeState.tabIndex;

    return Scaffold(
      body: IndexedStack(     // indexedStack helps to avoid rebuilding the UI over and over again. It builds it just once.
        children: listOfPages,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.deepOrange,
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            homeBloc.updateTabIndex(value);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.savings), label: "Save"),
          BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch), label: "Invest"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle_outlined), label: "Account")
        ],
      ),
    );
  }
}
