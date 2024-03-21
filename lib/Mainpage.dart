import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:songs_play/Artists.dart';
import 'package:songs_play/BottomNavigation.dart';
import 'package:songs_play/Settings.dart';
import 'package:songs_play/NewSongs.dart';
import 'package:songs_play/SignUp.dart';

import 'Search_items_bar.dart';


class Mainpage extends StatelessWidget {
  String getGreeting(){
    DateTime now = DateTime.now();
    int hour  = now.hour;
    if ( hour >=0 && hour < 12 ) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 16){
      return 'Good Afternoon';
    } else if (hour >= 16 && hour < 20){
      return 'Good Evening';
    } else{
      return 'Sleep well gn';
    }
  }
  @override
  Widget build(BuildContext context) {
    String greeting = getGreeting();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black87],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 45, 16, 0),
                  child: Row(
                    children: [
                      Text(
                        'Hello, $greeting!',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 1),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Search_items_bar ()),
                          );
                        },
                      ),

                      SizedBox(width: 0),
                      IconButton(
                        icon: Icon(Icons.person),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    height: 180.0,
                  ),
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('lib/assets/soon/background.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Coming soon',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Singers',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    child: Row(
                      children: [
                        for (int i = 1; i <= 10; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                int $id = i;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Artists(artistId: $id)),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'lib/assets/soon/artist$i.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'New songs',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    child: Row(
                      children: [
                        for (int i = 1; i <= 10; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewSongs()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'lib/assets/soon/artist$i.jpg',
                                  width: 150,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

