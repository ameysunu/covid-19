import 'package:flutter/material.dart';
import 'news.dart';
import 'search.dart';
import 'about_us.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    News(),
    Search(),
    AboutUs(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
         showSelectedLabels: true,
         backgroundColor: Colors.grey[900],
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
           icon: Icon(Icons.home,
           color: Colors.white),
           title: Text('About Us',
           style: TextStyle(color: Colors.white),)
         )
       ],
       onTap: (index){
         setState(() {
           _selectedIndex = index;
         });
       }
     ),
     body: _widgetOptions.elementAt(_selectedIndex),
   );
  }
}
