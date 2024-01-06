import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  const Artists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Text(
          "SINGER NAME",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Colors.blue,

          ),
        ),

      ),
    );

  }
}
