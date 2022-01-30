import 'package:flutter/material.dart';
import 'package:snow_mountain/pages/home_page.dart';
import 'package:snow_mountain/pages/navpages/bar_item_page.dart';
import 'package:snow_mountain/pages/navpages/my_page.dart';
import 'package:snow_mountain/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List _pages = [
    Homepage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
         BottomNavigationBarItem(title:Text("Home"),icon: Icon(Icons.apps)),
          BottomNavigationBarItem(title:Text("bar"),icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(title:Text("search"),icon: Icon(Icons.search)),
          BottomNavigationBarItem(title:Text("my"),icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
