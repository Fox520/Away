import 'package:away/presentation/pages/discover/discover_view.dart';
import 'package:away/presentation/pages/home/home_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  late List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _children = [
      HomePageView(),
      DiscoverView(),
      Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'Me',
          ),
        ],
        backgroundColor: darkModeOn
            ? CupertinoColors.darkBackgroundGray
            : CupertinoColors.white,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: darkModeOn ? Colors.white : Color(0xFF40505E),
        onTap: onTabTapped,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
