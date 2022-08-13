import 'package:flutter/material.dart';

void main() {
  runApp(const Room());
}

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
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
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.mic_outlined,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/profile_photo.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Spaces',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        'Search for a Space',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Happening Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Spaces going on right now',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.whatshot_outlined,
                        color: Colors.pink,
                      ),
                      Text(' Trending',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.brown[400],
                            borderRadius: BorderRadius.circular(12)),
                        height: 230,
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.graphic_eq_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(' LIVE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 270,
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 17.0),
                                child: Text(' Chill Session With Travis',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 80,
                                    child: Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/omah.jpeg'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/models.JPG'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/profile_photo.jpeg'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(' 970 listening',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.zero,
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        height: 80,
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundImage:
                                          AssetImage('images/travis.jpeg'),
                                    ),
                                    Text(
                                      ' Travis Scott LaFlame',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.white60.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      height: 17,
                                      width: 40,
                                      child: Text(
                                        ' Host',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                ' Rage.Rage.Rage',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[400],
                            borderRadius: BorderRadius.circular(12)),
                        height: 230,
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.graphic_eq_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(' LIVE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 270,
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 17.0),
                                child: Text(' The Singles Lounge 🥰',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 80,
                                    child: Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/dani.jpeg'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/laju.jpeg'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'images/profile_photo.jpeg'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(' 133 listening',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.zero,
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        height: 80,
                        width: 380,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundImage:
                                          AssetImage('images/maj.jpeg'),
                                    ),
                                    Text(
                                      ' BADOO',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.white60.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      height: 17,
                                      width: 40,
                                      child: Text(
                                        ' Host',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                ' provoke.inspire.motivate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = ['Kareem', 'Laju', 'Dani'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchItems = [];
    for (var hobbies in searchTerms) {
      if (hobbies.toLowerCase().contains(query.toLowerCase())) {
        matchItems.add(hobbies);
      }
    }
    return ListView.builder(
        itemCount: matchItems.length,
        itemBuilder: (BuildContext context, index) {
          var result = matchItems[index];
          return ListTile(
            title: Text(result),
          );
        });
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchItems = [];
    for (var hobbies in searchTerms) {
      if (hobbies.toLowerCase().contains(query.toLowerCase())) {
        matchItems.add(hobbies);
      }
    }
    return ListView.builder(
        itemCount: matchItems.length,
        itemBuilder: (BuildContext context, index) {
          var result = matchItems[index];
          return ListTile(
            title: Text(result),
          );
        });
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
