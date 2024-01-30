import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mainpage.dart';

class Search_items_bar extends StatelessWidget {
  const Search_items_bar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: IconButton(
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
      ),
    );
  }
}
