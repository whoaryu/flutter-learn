import 'package:dailylearn/widgets/alert.dart';
import 'package:dailylearn/widgets/animated_text.dart';
import 'package:dailylearn/widgets/dismissible.dart';
import 'package:dailylearn/widgets/drawer.dart';
import 'package:dailylearn/widgets/listgrid.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int ind = 0;
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];
  PageController pagecontrol = PageController();

  void _onItemTapped(int index) {
    setState(() {
      ind = index;
    });
    pagecontrol.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('Bottom Navigations'),
      //),
      body: PageView(
        controller: pagecontrol,
        children: [alerts(), animatedtxt(), draw(), dismiss()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: ind,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
