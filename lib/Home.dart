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
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
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
      body: Builder(
        builder: (context) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/profile_photo.jpeg'),
                    ),
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
                        backgroundImage: AssetImage('images/${dp[index]}')),
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
      ),
    );
  }
}

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Container(
        height: 1000,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      height: 70,
                      width: 50,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/profile_photo.jpeg'),
                      ),
                    ),
                    trailing: Icon(
                      Icons.switch_account,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'CHAMPIONES 1️⃣4️⃣',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@kingdavid.ee',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          '122',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '140',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: const Text('Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: const Text('Lists',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.comment,
                color: Colors.white,
              ),
              title: const Text('Topics',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
              title: const Text('Bookmarks',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.flash_on,
                color: Colors.white,
              ),
              title: const Text('Moments',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              title: const Text('Purchases',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            ListTile(
              leading: Icon(
                Icons.payments,
                color: Colors.white,
              ),
              title: const Text('Monetization',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Divider(
              height: 7,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.rocket_launch,
                color: Colors.white,
              ),
              title: const Text('Twitter for professionals',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Divider(
              height: 7,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
