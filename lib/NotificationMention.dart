import 'package:flutter/material.dart';

void main() {
  runApp(Mentions());
}

class Mentions extends StatefulWidget {
  const Mentions({Key? key}) : super(key: key);

  @override
  State<Mentions> createState() => _MentionsState();
}

class _MentionsState extends State<Mentions> {
  List<String> userNotification = <String>[
    'TCR',
    'M.A.J',
    'TRAVIS SCOTT FANS 🔥'
  ];
  List<String> contents = <String>[
    'Recent tweet from',
    'Recent tweet from',
    'Recent tweet from'
  ];
  final List<String> dp = <String>['ronaldo.jpeg', 'maj.jpeg', 'travis.jpeg'];

  final List<String> content2 = <String>[
    'Cristiano Ronaldo in blue kit 🔵 \n pic.twitter.com/Q9gMpH9uYf',
    '⚡ pic.twitter.com.5asQ00VYII',
    'UTOPIA 😆 pic.twitter.com/cgNUKwEEXH'
  ];
  final List<String> comments = <String>['240', '1000', '425', '244'];
  final List<String> retweet = <String>['244', '534', '24', '456'];
  final List<String> like = <String>['435', '57', '964', '769'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: userNotification.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/${dp[index]}'),
                      ),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
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
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            '${content2[index]}',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.mode_comment_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('${comments[index]}',
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20),
                            Icon(
                              Icons.repeat,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('${retweet[index]}',
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20),
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('${like[index]}',
                                style: TextStyle(color: Colors.grey)),
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
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.grey,
        ),
      ),
    );
  }
}
