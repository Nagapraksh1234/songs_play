import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:songs_play/model/songsModel.dart';

void updateList(String value) async {
  final response = await http.post(
    Uri.parse('http://your-server-url/search.php'), // Replace with your server URL
    body: {'query': value},
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final results = data['results']; // Modify this based on your server response structure

    setState(() {
      var displayList = results
          .map<SongsModel>((result) => SongsModel(
        result['title'],
        DateTime.now() as int?, // Replace with actual date
        5, // Replace with actual rating
        result['imageUrl'], // Replace with actual image URL
      ))
          .toList();
    });
  } else {
    throw Exception('Failed to load data');
  }
}

void setState(Null Function() param0) {
}
