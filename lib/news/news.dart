import 'package:flutter/material.dart';
import 'newsfeed.dart';
import 'description.dart';
import 'newshome.dart';

void main() => runApp(NewsApp());

class NewsApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    NewsFeedPage.tag: (context) => NewsFeedPage(null),
    DescriptionPage.tag: (context) => DescriptionPage(null),
  
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.black,
      body: HomePage(),
      ),
      routes: routes,
    );
  }
}


