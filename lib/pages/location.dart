// //Hospital location
//
// import 'package:flutter/material.dart';
// import 'package:finalproject/pages/sendlocation.dart';
// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
//
// class location extends StatefulWidget {
//   @override
//   _location createState() => _location();
// }

//
// // have to add map hospital location
//
// class _location extends State<location> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('Find the nearest hospital'),
//         // print (a),
//         centerTitle: true,
//         elevation: 0,
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:finalproject/data.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';



class location extends StatefulWidget {
  @override
  _location createState() => _location();
}


// have to add map hospital location

class _location extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("User location "),
        ),
        body: OpenStreetMapSearchAndPick(
            center: LatLong(dlat, dlon),
            // find the user location
            buttonColor: Colors.black,
            buttonText: 'confirm',
            onPicked: (pickedData) {
              // print("24.36368984455039");
              // print("88.62835362326949");
              print(pickedData.address);
              print(dlat);
              print(dlon);
            }

        )
    );
  }
}































// class location extends StatefulWidget {
//   @override
//   _location createState() => _location();
// }
//
//
// // have to add map hospital location
//
// class _location extends State<location> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       title: 'Find Hospital',
//
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//
//       ),
//     );
//   }
// }




