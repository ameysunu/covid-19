import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              
              children: <Widget>[
                 Card(                 //Card1
                  color:Colors.grey[900],
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                  child:ListTile(
                    leading: Icon(Icons.blur_circular ,
                     color: Colors.white,
                     ),
                     title:  Text('Under Construction',
                     style: TextStyle(color: Colors.white,
                     fontSize: 20.0,
                     ),
                     ),
                     subtitle: Text('We are still working on this tab :)',
                     style: TextStyle(color: Colors.white,
                     fontSize: 15.0,
                     ),
                     ),
                  )
                  ),
                   
              ]
              ),
        ),
      ),
    );
  }
}