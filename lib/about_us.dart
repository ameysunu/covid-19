import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
             children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/IMG_2590.jpeg')
                  ),
                ),
               Text('Amey Sunu', 
                style: TextStyle(
                fontFamily: 'Pacifico',
                  fontSize: 40.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text('FLUTTER DEVELOPER',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]
                ),
                ),
              ]
              ),
        ),
      ),
    );
  }
}