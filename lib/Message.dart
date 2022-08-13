import 'package:flutter/material.dart';

void main() {
  runApp(const Message());
}

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
            child: Icon(
              Icons.post_add_outlined,
            ),
          ),
        ),
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
            child: GestureDetector(
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
                        'Search Direct Messages',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Icon(Icons.settings_outlined, color: Colors.white),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Divider(
              height: 8,
              color: Colors.grey,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.mark_email_unread_outlined,
                  color: Colors.grey[200],
                ),
                Text(
                  ' Message requests',
                  style: TextStyle(color: Colors.grey[200]),
                )
              ],
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/kareem.jpeg'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'Kareem.ftw',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @kareemshak...',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '14/03/22',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You: *****************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/models.JPG'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'cdMerchDrop',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @dckdcolab...',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '17/02/22',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*****************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/laju.jpeg'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      '🧚‍♀',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @JacintaLaju',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      '16/01/22',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You: *****************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/dp.webp'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'Web3.moon',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @thatweb3nig...',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '31/08/21',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You: *****************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/omah.jpeg'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'Big4L🦅',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @omah11',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Text(
                      '31/08/21',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You: *****************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/star.png'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'BeLimitless',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      ' @limitless',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 68,
                    ),
                    Text(
                      '21/07/21',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You: ************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/dani.jpeg'),
                  radius: 30,
                ),
                title: Row(
                  children: [
                    Text(
                      'Daniella',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      ' @dani_ellaah',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      '30/06/21',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '**************',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
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
