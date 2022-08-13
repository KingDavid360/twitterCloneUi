import 'package:flutter/material.dart';
import 'package:twitter_clone/NotificationAll.dart';
import 'package:twitter_clone/NotificationMention.dart';

void main() {
  runApp(const Notifications());
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: Container(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
            ),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile_photo.jpeg'),
              ),
            ),
            title: const Center(
              child: Text(
                'Notifications',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            actions: const [
              Icon((Icons.settings_outlined)),
            ],
          ),
          body: Container(
            child: Column(
              children: const [
                TabBar(
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Mentions',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      All(),
                      Mentions(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
