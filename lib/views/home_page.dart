import 'package:flutter/material.dart';
import 'package:looniwise_frontend/views/budget_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    Container(
      child: const Text("Expenses"),
    ),
    const BudgetPage(),
    Container(
      child: const Text("Achievements"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: CircleAvatar(
          backgroundColor: Colors.black12,
          foregroundImage: AssetImage("assets/person.png"),
        ),
      ),
      body: Container(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 3.0,
        showUnselectedLabels: false,
        selectedItemColor: Colors.purple,
        onTap: _onTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: "Expense"),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_sharp), label: "Budget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stream), label: "Achievements"),
        ],
      ),
    );
  }
}
