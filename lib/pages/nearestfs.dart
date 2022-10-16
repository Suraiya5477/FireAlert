// import 'package:flutter/material.dart';
//
// class nearestfr extends StatefulWidget {
//   @override
//   _nearestfr createState() => _nearestfr();
// }
//
// class _nearestfr extends State<nearestfr> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('calling to nearest fire station'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:finalproject/data.dart';
import 'package:finalproject/pages/sendlocation.dart';
import 'package:url_launcher/url_launcher.dart';




import "dart:collection";
import 'dart:math' ;


Map<String, String>mss = {
  'tel:01730336655': 'Fire Service & Civil Defence Station',
  'tel:01721750270': 'Chouddopai Fire Service and Civil Defence Station',
  'tel:01745230908': 'Fire Service And Civil Defence Station, Nowhata',
  'tel:01759263286': 'Rajshahi Uttar Fire Service & Civil Defence Station',
};



List<dynamic> data = [
  {
    //24.36386148570248, 88.62837729753483 ruet
    "lat": dlat,
    "lng": dlon

//       24.381905274576575, 88.55259986959167 kashia danga thana
//       "lat":  24.381905274576575,
//       "lng": 88.552599869591673


//       24.36342948441233, 88.60429399930133 alupotti padma bank
//             "lat":   24.36342948441233,
//             "lng": 88.60429399930133
  },

  {
//    24.36830832067132, 88.58968913598788 fscd 1
    "lat": 24.36830832067132,
    "lng": 88.58968913598788
  },
  {
//       24.446061017317845, 88.61272037241945 nowhata fscd 2
    "lat":  24.446061017317845,
    "lng": 88.61272037241945
  },
  {
    //24.383077416537148, 88.54830078509323 rajshahi uttar 3
    "lat": 24.383077416537148,
    "lng": 88.54830078509323
  },

  {
//       24.367974175313115, 88.6550679475409 coddhup 4
    "lat":  24.367974175313115,
    "lng": 88.6550679475409
  },
//     {
//       "lat": 44.240309,
//       "lng": -91.493619
//     },
//     {
//       "lat": 44.968041,
//       "lng": -94.419696
//     },
//     {
//       "lat": 44.333304,
//       "lng": -89.132027
//     },
//     {
//       "lat": 33.755783,
//       "lng": -116.360066
//     },
//     {
//       "lat": 33.844847,
//       "lng": -116.549069
//     },
];


String fsname = "calling to fire station";

List<String> listOfString1 = ["Fire Service & Civil Defence Station","Fire Service And Civil Defence Station, Nowhata","Rajshahi Uttar Fire Service & Civil Defence Station","Chouddopai Fire Service and Civil Defence Station"];
List<String> listOfString2 = ["01730336655","01745230908","01759263286","0721750270"];

int w = 0;


String caldistan() {
  String nearesttele = '';


  int totalDistance = 999999999999;
  int location = -1;
  for(var i = 1; i < data.length; i++){
    double temp = calculateDistance(data[0]["lat"], data[0]["lng"], data[i]["lat"], data[i]["lng"]);
    int tempi =(temp * 10000).round();
    if (totalDistance > tempi)
    {
      totalDistance = tempi;
      location = i;
    }
//     print (temp);
//     print(tempi);
//     totalDistance += calculateDistance(data[i]["lat"], data[i]["lng"], data[i+1]["lat"], data[i+1]["lng"]);
  }
  print(totalDistance);
  print (location);
  print (listOfString1 [location - 1]);
  print (listOfString2 [location - 1]);
  nearesttele = listOfString2 [location - 1];
  // ?nearestfr = listOfString1 [location - 1];


 fsname = listOfString1[location - 1];
  // print (nearesttele);
  // print (mss [nearesttele]);
  return nearesttele;
}









double calculateDistance(lat1, lon1, lat2, lon2){
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 - c((lat2 - lat1) * p)/2 +
      c(lat1 * p) * c(lat2 * p) *
          (1 - c((lon2 - lon1) * p))/2;
  return 12742 * asin(sqrt(a));
}



var entryList = mss.entries.toList();


String p = caldistan();
// String q = entryList[w].value;
// = mss[p];
// void main() => runApp(const MyApp());

class nearestfr extends StatefulWidget {
  @override
  _nearestfr createState() => _nearestfr();
}

class _nearestfr extends State<nearestfr> {

  final TextEditingController _numberCtrl = TextEditingController();

  final TextEditingController _numberCtrl2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = caldistan();
    _numberCtrl2.text = fsname;



  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Nearest Fire Station'),
          centerTitle: true,
        ),
        body: Column(
            // Text('Deliver features faster'),
            // Text('Craft beautiful UIs'),

            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: 300,
                child:Text(
                    _numberCtrl2.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Phone Number",),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text('Tap to call',
                style:TextStyle(fontSize: 20,),
              ),
              onPressed: () async {
                // FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                launch("tel:" + Uri.encodeComponent(_numberCtrl.text));
              },
            )

          ],

        ),


      ),


    );
  }
}
