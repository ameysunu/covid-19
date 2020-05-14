import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsfeed.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: new SafeArea(
        child: new Column(
          children: [
            new Expanded(
              flex: 1,
              child: new Container(
                width: width,
                color: Colors.black,
                child: new Center(
                  child: new GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: <Widget>[
                      new Card(
                        color: Colors.grey[900],
                        elevation: 3.0,
                        child: new GestureDetector(
                          child: new Container(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(Icons.business,
                                    size: 100.0,
                                    color: Colors.white,),
                                  ),
                                ),
                                Center(
                                  child: new Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Business ",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            var id = 1;
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ),
                            );
                          },
                        ),
                      ),
                      new Card(
                        color: Colors.grey[900],
                        elevation: 3.0,
                        child: new GestureDetector(
                          child: new Container(
                            child: new Column(
                              children: <Widget>[
                               Center(
                                 child: Padding(
                                   padding: const EdgeInsets.all(16.0),
                                   child: Icon(Icons.show_chart,
                                   size: 100.0,color: Colors.white,),
                                 ),
                               ),
                                Center(
                                  child: new Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Stocks",
                                        style: TextStyle(
                                            fontSize: 20.0, color: Colors.white),
                                        textAlign: TextAlign.center),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            var id = 2;
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ),
                            );
                          },
                        ),
                      ),
                      new Card(
                        color: Colors.grey[900],
                        elevation: 3.0,
                        child: new GestureDetector(
                          child: new Container(
                            child: Column(
                              children: <Widget>[
                                 Center(
                                 child: Padding(
                                   padding: const EdgeInsets.all(16.0),
                                   child: Icon(Icons.computer,
                                   size: 100.0,color: Colors.white,),
                                 ),
                                 ),
                                new Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Technology",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            var id = 3;
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new NewsFeedPage(id),
                                ));
                          },
                        ),
                      ),
                      new Card(
                        color: Colors.grey[900],
                        elevation: 3.0,
                        child: new GestureDetector(
                          child: new Container(
                            child: new Column(
                              children: <Widget>[
                                 Center(
                                   child: Padding(
                                     padding: const EdgeInsets.all(16.0),
                                     child: Icon(Icons.local_hospital,
                                     size: 100.0,color: Colors.white,),
                                   ),
                                 ),
                                new Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Health",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            var id = 4;
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
