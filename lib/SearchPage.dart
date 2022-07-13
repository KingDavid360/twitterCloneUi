import 'package:flutter/material.dart';

void main() {
  runApp(const SearchPage());
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/profile_photo.jpeg'),
            ),
            title: GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              child: Container(
                height: 32,
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
                      'Search Twitter',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            trailing: Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/nigeria.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  Nigeria politics . LIVE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text('  2022 Nigeria State Elections:',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26)),
                Text('  Ekiti and Osun',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26)),
              ],
            ),
          ),
          Divider(
            height: 8,
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          Text('   Trends for you',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Row(
              children: [
                Text('Sports . Trending',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                SizedBox(
                  width: 230,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Text('Ancelotti',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
                Text('11.5k Tweets',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Row(
              children: [
                Text('#CokeStudio 🥫',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Text(
                      'The world\'s greatest artist came together to make magic on one track',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ),
                Text('↗ Promoted by Coca-Cola Nigeria',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Row(
              children: [
                Text('Careers . Trending',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                SizedBox(
                  width: 223,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Text('University of Ilorin',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Row(
              children: [
                Text('Sports . Trending',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                SizedBox(
                  width: 230,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Text('Hijack FC',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
                Text('2,115 Tweets',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
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
