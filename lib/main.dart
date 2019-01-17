import 'package:flutter/material.dart';
import 'package:flutter_app/feed.dart';
import 'package:flutter_app/forum.dart';
import 'package:flutter_app/home.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  StateMainPage createState() => StateMainPage();
}

class StateMainPage extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [Home(), Feed(), Forum()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _children[_currentIndex], // new
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Messages'),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ));
  }
}