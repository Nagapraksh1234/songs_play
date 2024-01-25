import 'package:flutter/material.dart';
import 'package:songs_play/Mainpage.dart';

class Artists extends StatelessWidget {
  const Artists({Key? key, required this.artistId}) : super(key: key);
  final int artistId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Singer Name",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'lib/assets/soon/artist$artistId.jpg',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Popular songs from singer name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(100, 40)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0), // Set the circular radius to 0.0 for sharp edges
                  ),
                ),

                // Change the color to your desired color
              ),
              child: Text(
                "new",
                style: TextStyle(
                  fontSize: 20
                ),
              ),

            ) ,
            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
