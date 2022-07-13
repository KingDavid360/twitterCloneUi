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
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/profile_photo.jpeg'),
            ),
            title: Center(
              child: Text(
                'Messages',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            trailing: Icon(Icons.settings_outlined, color: Colors.white),
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
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
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
                      'Search Twitter',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Card(
                color: Colors.black,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/idk.jpeg'),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = ['Programming', 'Football', 'Fashion'];
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
