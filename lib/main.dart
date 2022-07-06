import 'package:flutter/material.dart';
import 'package:twitter_clone/Home.dart';
import 'package:twitter_clone/Message.dart';
import 'package:twitter_clone/Notifications.dart';
import 'package:twitter_clone/Room.dart';
import 'package:twitter_clone/SearchPage.dart';

void main() {
  runApp(const TwitterClone());
}

class TwitterClone extends StatelessWidget {
  const TwitterClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Main(),
      )),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int myIndex = 0;

  List<Widget> widgetList = const [
    Home(),
    SearchPage(),
    Room(),
    Notifications(),
    Message(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none),
            label: 'Room',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Inbox',
          ),
        ],
        unselectedLabelStyle: TextStyle(color: Colors.grey[700]),
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
      ),
      body: widgetList.elementAt(myIndex),
    );
  }
}
