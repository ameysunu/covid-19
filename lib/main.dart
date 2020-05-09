import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey[900],
        ),
        body: HomePage(),
      ),
    ),
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.grey[900],
       currentIndex: 0, 
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home,
           color: Colors.white),
           title: new Text('Home',
            style: TextStyle(color: Colors.white),),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.search,
           color: Colors.white),
           title: new Text('Search',
            style: TextStyle(color: Colors.white),),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings,
           color: Colors.white),
           title: Text('Settings',
           style: TextStyle(color: Colors.white),)
         )
       ],
     ),
   );
  }
}