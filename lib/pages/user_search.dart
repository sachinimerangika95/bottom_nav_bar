import 'package:flutter/material.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<UserSearch> {

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Ancient City", "image": "assets/images/ancient_city.jpg", "distance": 13},
    {"id": 2, "name": "Phuket", "image": "assets/images/phuket.jpg", "distance": 13},
    {"id": 3, "name": "River Kwai", "image": "assets/images/river_kwai.jpg", "distance": 13},
    {"id": 4, "name": "Sanctuary Of Thruth", "image": "assets/images/sanctuary_of_truth.jpg", "distance": 13},
    {"id": 5, "name": "Bangkok City", "image": "assets/images/bangkok_city.jpg", "distance": 13},
    {"id": 6, "name": "Wat Saket", "image": "assets/images/wat_saket.jpg", "distance": 13},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      // debugPrint('movieTitle: $results');

      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Listview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Image.asset(
                      _foundUsers[index]['image'],
                      height: 36,
                    ),
                    title: Text(_foundUsers[index]['name'], style:TextStyle(
                      color:Color.fromARGB(255, 78, 78, 78)
                    )),
                    subtitle: Text(
                        '${_foundUsers[index]["distance"].toString()} KM from Bangkok',style:TextStyle(
                        color:Color.fromARGB(255, 128, 128, 128)
                    )),
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
