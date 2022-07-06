import 'package:flutter/material.dart';

void main() {
  runApp(const Notifications());
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> userNotification = <String>[
    'Fabrizio Romano ${[Icon(Icons.verified)]}',
    'TCR',
    'M.A.J',
    'TRAVIS SCOTT FANS 🔥'
  ];
  List<String> contents = <String>[
    'new tweet from',
    'Recent tweet from',
    'Recent tweet from',
    'Recent tweet from'
  ];
  final List<String> dp = <String>[
    'fab.jpeg',
    'ronaldo.jpeg',
    'maj.jpeg',
    'travis.jpeg'
  ];
  final List<String> content2 = <String>[
    '',
    'Cristiano Ronaldo in blue kit 🔵 pic.twitter.com/Q9gMpH9uYf',
    '⚡ pic.twitter.com.5asQ00VYII',
    'UTOPIA 😆 pic.twitter.com/cgNUKwEEXH'
  ];
  final List<String> comments = <String>['240', '1000', '425', '244'];
  final List<String> retweet = <String>['244', '534', '24', '456'];
  final List<String> like = <String>['435', '57', '964', '769'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/profile_photo.jpeg'),
                  ),
                ),
                title: Center(
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Icon((Icons.settings_outlined)),
                ],
                bottom: const TabBar(
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.white),
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
              ),
              body: TabBarView(
                children: [
                  ListView(
                    children: [
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: userNotification.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: ListTile(
                              leading: Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/${dp[index]}'),
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${contents[index]}',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          '${userNotification[index]}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      '${content2[index]}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.mode_comment_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${comments[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.repeat,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${retweet[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${like[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.file_upload_outlined,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: userNotification.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: ListTile(
                              leading: Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/${dp[index]}'),
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${contents[index]}',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          '${userNotification[index]}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      '${content2[index]}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.mode_comment_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${comments[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.repeat,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${retweet[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10),
                                        Text('${like[index]}',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.file_upload_outlined,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
