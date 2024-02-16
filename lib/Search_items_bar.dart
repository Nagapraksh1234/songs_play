import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:songs_play/model/songsModel.dart';
import 'package:songs_play/more.dart';

import 'Mainpage.dart';
import 'model/songsModel.dart';

class Search_items_bar extends StatelessWidget {
  const Search_items_bar({super.key});

  @override
  Widget build(BuildContext context) {
    List<SongsModel> Songs = SongsModel.Songs;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Enjoy your favorite music',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Trending Songs',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),

               SizedBox(height: 20) ,

              Container(
                color: Colors.white.withOpacity(0.1), // Set background color as transparent
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => More()),
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'lib/assets/soon/artist3.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        child: Text(
                          'kannada new release songs',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.help_outline),
                        color: Colors.white,
                        onPressed: () {
                          // This onPressed handler can be removed since navigation is handled by GestureDetector
                        },
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
