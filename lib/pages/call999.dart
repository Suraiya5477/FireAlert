// import 'package:flutter/material.dart';
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('call999'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('call999'),
//         centerTitle: true,
//         elevation: 0,
//
//       ),
//     );
//   }
// }



//
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// _makingPhoneCall() async {
//   var url = Uri.parse("tel:999");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Geeks for Geeks'),
//       //   backgroundColor: Colors.green,
//       // ), // AppBar
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Container(
//                 height: 250.0,
//               ), //Container
//               const Text(
//                 'For call 999 press Here',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold,
//                 ), //TextStyle
//               ), //Text
//               // Container(
//               //   height: 20.0,
//               // ),
//               // const Text(
//               //   'For further Updates',
//               //   style: TextStyle(
//               //     fontSize: 20.0,
//               //     color: Colors.green,
//               //     fontWeight: FontWeight.bold,
//               //   ),
//               // ),
//               // Container(
//               //   height: 20.0,
//               // ),
//               ElevatedButton(
//                 onPressed: _makingPhoneCall,
//                 style: ButtonStyle(
//                   padding:
//                   MaterialStateProperty.all(const EdgeInsets.all(5.0)),
//                   textStyle: MaterialStateProperty.all(
//                     const TextStyle(color: Colors.black),
//                   ),
//                 ),
//                 child: const Text('Here'),
//               ), // ElevatedButton
//
//
//               // DEPRECATED
//               // RaisedButton(
//               //   onPressed: _makingPhoneCall,
//               //   child: Text('Call'),
//               //   textColor: Colors.black,
//               //   padding: const EdgeInsets.all(5.0),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//

// use if for later nearest call api


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final TextEditingController _numberCtrl = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _numberCtrl.text = "085921191121";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: _numberCtrl,
//                 decoration: const InputDecoration(labelText: "Phone Number"),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             ElevatedButton(
//               child: const Text("Test Call"),
//               onPressed: () async {
//                 FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }








//
//
//
// import 'dart:math' show cos, sqrt, asin;
//
// void main() {
//   double calculateDistance(lat1, lon1, lat2, lon2){
//     var p = 0.017453292519943295;
//     var c = cos;
//     var a = 0.5 - c((lat2 - lat1) * p)/2 +
//         c(lat1 * p) * c(lat2 * p) *
//             (1 - c((lon2 - lon1) * p))/2;
//     return 12742 * asin(sqrt(a));
//   }
//
//   List<dynamic> data = [
//     {
//       //24.36386148570248, 88.62837729753483 ruet
//       "lat": 24.36386148570248,
//       "lng": 88.62837729753483
//
// //       24.381905274576575, 88.55259986959167 kashia danga thana
// //       "lat":  24.381905274576575,
// //       "lng": 88.552599869591673
//
//
// //       24.36342948441233, 88.60429399930133 alupotti padma bank
// //             "lat":   24.36342948441233,
// //             "lng": 88.60429399930133
//     },
//
//     {
// //    24.36830832067132, 88.58968913598788 fscd 1
//       "lat": 24.36830832067132,
//       "lng": 88.58968913598788
//     },
//     {
// //       24.446061017317845, 88.61272037241945 nowhata fscd 2
//       "lat":  24.446061017317845,
//       "lng": 88.61272037241945
//     },
//     {
//       //24.383077416537148, 88.54830078509323 rajshahi uttar 3
//       "lat": 24.383077416537148,
//       "lng": 88.54830078509323
//     },
//
//     {
// //       24.367974175313115, 88.6550679475409 coddhup 4
//       "lat":  24.367974175313115,
//       "lng": 88.6550679475409
//     },
// //     {
// //       "lat": 44.240309,
// //       "lng": -91.493619
// //     },
// //     {
// //       "lat": 44.968041,
// //       "lng": -94.419696
// //     },
// //     {
// //       "lat": 44.333304,
// //       "lng": -89.132027
// //     },
// //     {
// //       "lat": 33.755783,
// //       "lng": -116.360066
// //     },
// //     {
// //       "lat": 33.844847,
// //       "lng": -116.549069
// //     },
//   ];
//   List<String> listOfString1 = ["fscd","nowhata fscd","rajshahi uttar","coddhup"];
//   List<String> listOfString2 = ["tel:01730336655","tel:01745230908","tel:01759263286","tel:0721750270"];
//
//
//
//
//
//
//
//   int totalDistance = 999999999999;
//   int location = -1;
//   for(var i = 1; i < data.length; i++){
//     double temp = calculateDistance(data[0]["lat"], data[0]["lng"], data[i]["lat"], data[i]["lng"]);
//     int tempi =(temp * 10000).round();
//     if (totalDistance > tempi)
//     {
//       totalDistance = tempi;
//       location = i;
//     }
// //     print (temp);
// //     print(tempi);
// //     totalDistance += calculateDistance(data[i]["lat"], data[i]["lng"], data[i+1]["lat"], data[i+1]["lng"]);
//   }
//   print(totalDistance);
//   print (location);
//   print (listOfString1 [location - 1]);
//   print (listOfString2 [location - 1]);
//
// }
//
//
//
//
//



