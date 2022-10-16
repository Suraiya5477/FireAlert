// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:location/location.dart';
// import 'package:finalproject/data.dart';
// String temp = "";
// String lat ="";
// String lon = "";
// // double dlat = 0;
// // double dlon = 0;
// double diff = 0;
// Location loca = new Location();
// late bool _serviceEnabled ;
// late PermissionStatus _permissionGrandted;
// late LocationData _locationData;
// Future<dynamic> getLocation () async{
//   PermissionStatus permission  =  await loca.hasPermission();
//
//
//   if(permission==PermissionStatus.granted){
//     return loca.getLocation();
//   }else{
//     loca.requestPermission();
//   }
// }
//
//
// class sendlocation extends StatefulWidget {
//   @override
//   _sendlocation createState() => _sendlocation();
// }
//
// class _sendlocation extends State<sendlocation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('sendlocation'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//         body: const Center(child: Text('Press the button below to send location')),
//     floatingActionButton: FloatingActionButton(
//
//
//       onPressed: (){
//
//
//         getLocation().then((value){
//
//
//           print (value);
//
//           temp = value.toString();
//
//           // print("New String: ${temp.substring(2,6)}");
//           lat = temp.substring(18,27);
//           lon = temp.substring(35,44);
//           dlat = double.parse(lat);
//           dlon = double.parse(lon);
//
//
//         });
//
//         DatabaseReference _testRef = FirebaseDatabase.instance.reference().child("lat and lon");
//         _testRef.set(temp);
//
//
//     },
//     )
//     );
//   }
//
//   // getLocation() {}
// }



//_______________________________________________________________________________________________________________________________





import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:location/location.dart';
import 'package:finalproject/data.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';



class sendlocation extends StatefulWidget {
  @override
  _sendlocation createState() => _sendlocation();
}

class _sendlocation extends State<sendlocation> {
  @override


  Widget build(BuildContext context) {
    var marker = <Marker>[];

    marker = [
      // Marker(
      //   point: LatLng(24.3638, 88.6283),
      //   // width: 10,
      //   // height: 10,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // ),//1
      Marker(
        point: LatLng(dlat, dlon),
        // width: 10,
        // height: 10,
        // builder: (context) => FlutterLogo(), // ruet
        builder: (ctx) => Icon(Icons.pin_drop,color: Colors.red),

      ),//2
      Marker(
        point: LatLng(24.36830832067132, 88.58968913598788),
        // width: 10,
        // height: 10,
        // builder: (context) => FlutterLogo(),
        builder: (ctx) => Icon(Icons.fire_truck),

      ),//3
      Marker(
        point: LatLng(24.446061017317845, 88.61272037241945),
        // width: 10,
        // height: 10,
        // builder: (context) => FlutterLogo(),
        builder: (ctx) => Icon(Icons.fire_truck),

      ),//p
      Marker(
        point: LatLng(24.383077416537148, 88.54830078509323),
        // width: 10,
        // height: 10,
        // builder: (context) => FlutterLogo(),
        builder: (ctx) => Icon(Icons.fire_truck),

      ),//4
      Marker(
        point: LatLng(24.367974175313115,  88.6550679475409),
        // width: 10,
        // height: 10,
        // builder: (context) => FlutterLogo(),
        builder: (ctx) => Icon(Icons.fire_truck),


      ),
      //5
      // Marker(
      //   point: LatLng(24.370637329923742, 88.58151982698203),
      //   // width: 10,
      //   // height: 10,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // ),//6
      // Marker(
      //   point: LatLng(24.371297194712096, 88.58219095335335 ),
      //   // width: 10,
      //   // height: 10,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // ),//7
      // Marker(
      //   point: LatLng(24.3638, 88.6283),
      //   width: 5,
      //   height: 5,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // ),//8
      // Marker(
      //   point: LatLng(24.3638, 88.6283),
      //   width: 5,
      //   height: 5,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // ),//9
      // Marker(
      //   point: LatLng(24.3638, 88.6283),
      //   width: 5,
      //   height: 5,
      //   // builder: (context) => FlutterLogo(),
      //   builder: (ctx) => Icon(Icons.pin_drop),
      //
      // )//10


    ];


    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child:FlutterMap(
                  options: MapOptions(
                    center: LatLng(dlat,dlon),
                    zoom: 12.5,

                  ),
                  // nonRotatedChildren: [
                  //   AttributionWidget.defaultWidget(
                  //     source: 'OpenStreetMap contributors',
                  //     onSourceTapped: null,
                  //   ),
                  // ],
                  children: [
                    TileLayer(
                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      // subdomains: ['a','b','c'],

                      // userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayer(
                      markers: marker,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),




    );
  }

  // getLocation() {}
}






















