import 'package:flutter/material.dart';

class News extends StatelessWidget {
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
                     title:  Text('What is COVID-19?',
                     style: TextStyle(color: Colors.white,
                     fontSize: 20.0,
                     ),
                     ),
                     subtitle: Text('Learn about COVID and its effects on health',
                     style: TextStyle(color: Colors.white,
                     fontSize: 15.0,
                     ),
                     ),
                  )
                  ),
                   Card(                      //Card2
                  color:Colors.grey[900],
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                  child:ListTile(
                    leading: Icon(Icons.donut_large ,

                     color: Colors.white,
                     ),
                     title:  Text('Total Cases',
                     style: TextStyle(color: Colors.white,
                     fontSize: 20.0,
                     ),
                     ),
                     subtitle: Text('3,935,828, Deaths: 274,655', 
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