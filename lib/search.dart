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
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextFormField(
                     style: new TextStyle(color:Colors.white),
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search,
                     color: Colors.grey[600]),
                   enabledBorder: new OutlineInputBorder(borderRadius: new BorderRadius.horizontal(),
                   
                     borderSide: new BorderSide(
                            color: Colors.white                            
                          ),
                        ),
                   hintText: 'Search for a country/city',
                   hintStyle: TextStyle(color: Colors.grey[600])
                   ),
                   ),
                 ),
                   
                   Text("or",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                   color: Colors.white,
                   fontSize: 25.0,
                   ),
                   ),
                   InkWell(
                    child: Card(            
                    color:Colors.grey[900],
                    margin: EdgeInsets.symmetric(vertical: 12.0, horizontal:12.0),
                    child:ListTile(
                      leading: Icon(Icons.location_searching ,
                       color: Colors.white,
                       ),
                        title: Text('get your location for updates',
                        textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white,
                         fontSize: 20.0,
                         
                         ),
                         ),
                         onTap: ()async{
                          
                         },
              
                    ),
                    ),
                   )
                     
              ]
              ),
        ),
      ),
    );
  }
}
