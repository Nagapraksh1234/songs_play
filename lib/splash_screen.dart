import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:songs_play/Mainpage.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
      Mainpage(),));
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
     color: Colors.black,
       child: Center(child: Text('FavSONGS', style: TextStyle(
         fontSize: 34,
         fontWeight: FontWeight.w700,
         color: Colors.white
       ),)),
     ),
   );
  }
}