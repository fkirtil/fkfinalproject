import 'dart:math';

import 'package:fatmakirtilproject/Message.dart';
import 'package:flutter/material.dart';
import 'package:fatmakirtilproject/MessageCard.dart';
import 'package:bottom_navigation_badge/bottom_navigation_badge.dart';
import 'package:fatmakirtilproject/Profile.dart';

/*void gotoMessage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Message()),
  );
}*/




void main() => runApp(fatmakirtilproject());
class fatmakirtilproject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white10, elevation: 0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new SlowlyHome(),
    );
  }
}




class SlowlyHome extends StatefulWidget {
  const SlowlyHome({
    Key key,
  }) : super(key: key);

  @override
  _SlowlyHomeState createState() => _SlowlyHomeState();
}

class _SlowlyHomeState extends State<SlowlyHome> {

  PageController _pageController = PageController();
  List<Widget> _screens = [
    Profile(), Message(),
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  //int _currentIndex = 0;

  bool _show = true;

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }
  @override
  /*void initState() {
    super.initState();
    _setBadge();
  }

  void _setBadge() {
    setState(() {
      items = badger.setBadge(items, "1", 1);
    });
  }

  BottomNavigationBadge badger = new BottomNavigationBadge(
      backgroundColor: Colors. red,
      badgeShape: BottomNavigationBadgeShape.circle,
      textColor: Colors.white,
      position: BottomNavigationBadgePosition.topRight,
      textSize: 12);*/

  @override
  Widget build(BuildContext context) {
    var emptyWidth = MediaQuery.of(context).size.width * 0.20; // list başında boşluk bırakmak için
    return Scaffold(

      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin_rounded,
              color: _selectedIndex == 0 ? Colors.teal: Colors.grey,
            ),
            title: Text('Notes',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.teal: Colors.grey,
              ),
                      ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.sticky_note_2_sharp,
                color: _selectedIndex == 1 ? Colors.teal: Colors.grey,
            ),
            title: Text('Add',
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.teal: Colors.grey,
              ),),
          ),
        ],
      ),
    );
  }
}