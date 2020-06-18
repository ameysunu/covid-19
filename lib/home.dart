import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import'package:http/http.dart' as http;
class Home extends StatelessWidget {
  final int number = 911;
   void call(int number) => launch("tel:$number");
   void getData()async {
     http.Response response = await http.get(
       'https://api.covid19api.com/summary',
     );
     if (response.statusCode == 200){
     String data = response.body;
       

       dynamic totalCases = jsonDecode(data)['Global']['TotalConfirmed'];
       print(totalCases);
     }
     else {
       print(response.statusCode);
     }
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
              child: SafeArea(
              child: Column(
                children: <Widget>[
                   InkWell(
                      child: Card(            //Card1
                      color:Colors.grey[900],
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                      child:ListTile(
                        leading: Icon(Icons.blur_circular ,
                         color: Colors.white,
                         ),
                         
                          title: Text('What is COVID-19?',
                           style: TextStyle(color: Colors.white,
                           fontSize: 20.0,
                           ),
                           ),
                           onTap: ()async{
                             if (await canLaunch("https://www.who.int/emergencies/diseases/novel-coronavirus-2019/")) {
                            await launch("https://www.who.int/emergencies/diseases/novel-coronavirus-2019/");
                             }
                           },
                         
                         subtitle: Text('Learn about COVID and its effects on health',
                         style: TextStyle(color: Colors.white,
                         fontSize: 15.0,
                         ),
                         ),
                      )
                      ),
                   ),
                    InkWell(
                    child: Card(                      //Card2
                    color:Colors.grey[900],
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                    child:ListTile(
                        leading: Icon(Icons.priority_high ,

                         color: Colors.white,
                         ),
                         title:  Text('Total Cases',
                         style: TextStyle(color: Colors.white,
                         fontSize: 20.0,
                         ),
                         ),
                          onTap: ()async{
                            getData();
                            
                           },
                         subtitle: Text('Overall cases, deaths and survivors', 
                         style: TextStyle(color: Colors.white,
                         fontSize: 15.0,
                         ),
                         ),
                    )
                    ),
                     ),
                    InkWell(
                    child: Card(                      //Card3
                    color:Colors.grey[900],
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0),
                    child:ListTile(
                        leading: Icon(Icons.phone_iphone ,
                         color: Colors.white,
                         ),
                         title:  Text('Emergency Centers',
                         style: TextStyle(color: Colors.white,
                         fontSize: 20.0,
                         ),
                         ),
                          onTap: ()async{
                            call(number);
                           },
                         subtitle: Text('Call emergency helpline', 
                         style: TextStyle(color: Colors.white,
                         fontSize: 15.0,
                         ),
                         ),
                    )
                    ),
                     ),
                    Container(    
                      child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              top: 10.0,
                              bottom: 16.0,
                            ),
                            child: Text('Prevention',
                            style: TextStyle(color: Colors.white,
                         fontSize: 25.0,)
                            ),
                          ),
                        ]
                      ),
                    ),
                    Container(
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       SizedBox(
                        width: 200.0,
                        height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 10.0,
                          bottom: 16.0,
                        ),
                        child: Text('Test',
                        style: TextStyle(color: Colors.white,
                     fontSize: 20.0,)
                        ),
                      ),
                      ),
                      SizedBox(
                        width: 200.0,
                        height: 300.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 10.0,
                          bottom: 16.0,
                        ),
                        child: Text('Test1',
                        style: TextStyle(color: Colors.white,
                     fontSize: 20.0,)
                        ),
                      ),
                      ),
                      
                    ],
                      ),
                      )     
                ]
                ),
          ),
        ),
      ),
    );
  }
}