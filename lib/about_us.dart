import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Row(
             children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/IMG_2590.jpeg')
                      ),
                ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text('AMEY SUNU', 
                  style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                    fontSize: 20.0, 
                    letterSpacing: 2.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
               ),
              ]
            ),
        ),
      ),
    );
  }
}
/*
 Text('FLUTTER DEVELOPER',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]
                ),
                ),
                */