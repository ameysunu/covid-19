import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
class Search extends StatefulWidget{
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search>{
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;

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
                         onTap: ()/**/{
                          _getCurrentLocation();/**/
                         },
              
                    ),
                    ),
                   ),
              ]
              ),
        ),
      ),
    );

  }

_getCurrentLocation() {
  geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low).then((Position position) {
    setState(() {
      _currentPosition = position;
    });
    print(position.longitude);
    _getAddressFromLatLng();
  }).catchError((e) {
    print(e);
  });
}

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }

}
