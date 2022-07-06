import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> name = <String>[
    'UEFA Europa league🍳',
    'BeLimitless',
    'TheComponents'
  ];
  final List<String> dp = <String>['europa.png', 'star.png', 'models.png'];
  final List<String> handle = <String>[
    '@euro... 50min',
    '@limit... 1h',
    'compon... 4h'
  ];
  final List<String> contents = <String>[
    'He\'s not going going anywhere !!!🙌',
    'Meet the team',
    'Cactus Jack x Dior colab🙌',
  ];
  final List<String> contentImage = <String>[
    'ronaldo.jpeg',
    'after.jpg',
    'models.JPG',
  ];
  final List<String> comments = <String>[
    '240',
    '1000',
    '425',
  ];
  final List<String> retweet = <String>[
    '244',
    '534',
    '24',
  ];
  final List<String> like = <String>[
    '435',
    '57',
    '964',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile_photo.jpeg'),
                ),
                SizedBox(
                  width: 130,
                ),
                Container(child: Image.asset('images/logo.png')),
                SizedBox(
                  width: 125,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Icon(color: Colors.grey[100], Icons.auto_awesome),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  color: Colors.grey,
                  Icons.comment,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Football .',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Icon(
                  color: Colors.grey,
                  Icons.close,
                ),
              ],
            ),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/${dp[index]}'),
                  ),
                  title: Row(
                    children: [
                      Text(
                        '${name[index]}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${handle[index]}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    color: Colors.grey,
                    Icons.more_horiz,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          '${contents[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage("images/${contentImage[index]}"),
                              // fit: BoxFit.cover,
                            ),
                          ),
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
    );
  }
}
