import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(children: <Widget>
              [
              InkWell(
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('AMEY SUNU',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),
                ),
                subtitle: Text('FLUTTER DEVELOPER',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 15.0,
                color: Colors.white,
                ),
                ),
                 leading: CircleAvatar(
                   radius: 30.0,
                  backgroundImage: AssetImage('images/IMG_2590.jpeg'),
                ),
              ),
        ),
        onTap: ()async{
        if (await canLaunch("https://www.github.com/ameysunu")) {
        await launch("https://www.github.com/ameysunu"); }
        },
      ),
       InkWell(
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('IPSHITA JOSHI',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),
                ),
                subtitle: Text('FLUTTER DEVELOPER',
                style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 15.0,
                color: Colors.white,
                ),
                ),
                 leading: CircleAvatar(
                   radius: 30.0,
                  backgroundImage: AssetImage('images/ikoo.jpeg'),
                ),
              ),
        ),
        onTap: ()async{
        if (await canLaunch("https://www.github.com/ikoojoshi")) {
        await launch("https://www.github.com/ikoojoshi"); }
        },
      ),
      
              ],
              )
              
            ),
          ),
    );
  }
}


