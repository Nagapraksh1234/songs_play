// main.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class Song {
  final String title;
  final String releaseDate;
  final double rating;
  final String imageUrl;

  Song(this.title, this.releaseDate, this.rating, this.imageUrl);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<Song> displayList = [];

  Future<void> fetchSongs(String query) async {
    final response = await http.get(Uri.parse('http://localhost/projectfiles/search%20_items.php?query=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      final List<Song> songs = jsonData.map((json) => Song(
        json['song_title'],
        json['release_date'],
        json['rating'].toDouble(),
        json['song_postar_url'],
      )).toList();

      setState(() {
        displayList = songs;
      });
    } else {
      throw Exception('Failed to load songs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song Search'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: searchController,
            onChanged: (value) {
              if (value.isNotEmpty) {
                fetchSongs(value);
              } else {
                setState(() {
                  displayList.clear();
                });
              }
            },
            decoration: InputDecoration(
              hintText: 'Search songs',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: displayList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(displayList[index].title),
                  subtitle: Text(displayList[index].releaseDate),
                  trailing: Text(displayList[index].rating.toString()),
                  leading: Image.network(displayList[index].imageUrl),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
