import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:songs_play/Mainpage.dart';
import 'package:songs_play/MyProfile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 45, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align content to the start
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mainpage(),
                      ),
                    );
                  },
                ),
                SizedBox(width: 10), // Add some space
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25), // Use 'height' instead of 'width' for vertical spacing
          Container(
            width: 400,
            height: 75,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content to the start and end
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16), // Add left padding here
                      child: Text(
                        'Sanjay@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_right),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()
                            ),
                        );
                      },

                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
