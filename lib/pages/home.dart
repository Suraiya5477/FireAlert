// import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:finalproject/main.dart';
// _makingPhoneCall() async {
//   var url = Uri.parse("tel:999");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         //centerTitle: true,
//         toolbarHeight: 100,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text('FIRE ALERT',
//         style:TextStyle(
//             color: Colors.black,
//           fontSize: 30,
//         ) ,
//         ),
//       ),
//       body:
//       //SafeArea(
//
//
//         //minimum: const EdgeInsets.all(54.0),
//         //child:
//          Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             const SizedBox(height: 40),
//             // Divider(
//             //   color: Colors.black,
//             // ),
//             InkWell(
//               onTap: () {Navigator.pushNamed(context, '/nearestfs');},
//               child:
//               //Align(alignment: Alignment.center,),
//               Ink(
//                 width: 380,
//                 padding: EdgeInsets.all(50.0),
//                 //margin: EdgeInsets.all(20.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.black,
//                 ),
//                 child:
//                 TextButton.icon(
//                     style: TextButton.styleFrom(
//                       textStyle: TextStyle(
//                           fontSize: 20,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/nearestfs');
//                     },
//                     icon: Icon(Icons.call,
//                     size: 50,),
//                     label: Text(
//                         'Call The Nearest         \n'
//                             '     Fire station',
//                       style: TextStyle(
//                         color:Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Container(
//               width: 380,
//               padding: EdgeInsets.all(20.0),
//               //margin: EdgeInsets.all(20.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.yellow,
//               ),
//               //color: Colors.black,
//               child: TextButton.icon(
//                   style: TextButton.styleFrom(
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/location');
//                   },
//                   icon: Icon(Icons.location_on,
//                   size:50,),
//                   label: Text(
//                       'User Location and\n '
//                           '   Search Bar',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       wordSpacing: 2,
//                     ),
//                   )
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Divider(
//             //   color: Colors.black,
//             // ),
//
//             // ElevatedButton.icon(
//             //   // child: const Text("Call to 999"),
//             //   onPressed: () async {
//             //     FlutterPhoneDirectCaller.callNumber("tel:999");
//             //   },
//             //   icon: Icon(Icons.call),  //icon data for elevated button
//             //   label: Text("Call to 999"),
//             // ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 InkWell(
//                   onTap: () {
//                     // FlutterPhoneDirectCaller.callNumber("Tel:880999");
//                     launch("tel:" + Uri.encodeComponent('999'));
//                     },
//                   child: Ink(
//                     width:150,
//                     padding:EdgeInsets.all(20.0),
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//
//                     child:
//                       Column(
//                         children:const [
//                           Icon(Icons.call,
//                             size: 50,
//                           color: Colors.blue,),
//                           Text(
//                             'Call 999',
//                             style: TextStyle(
//                               color:Colors.white,
//                               fontSize: 20,
//                             ),
//                           )
//                         ],
//
//                       ),
//                     // child: TextButton.icon(
//                     //     style: TextButton.styleFrom(
//                     //       textStyle: const TextStyle(fontSize: 20),
//                     //     ),
//                     //     onPressed: () {
//                     //       FlutterPhoneDirectCaller.callNumber("Tel:999");
//                     //     },
//                     //     icon: Icon(Icons.call,
//                     //     size: 50,),
//                     //     label: Text(
//                     //         'Call to 999',
//                     //       style: TextStyle(
//                     //         color: Colors.white,
//                     //         fontWeight: FontWeight.bold,
//                     //       ),
//                     //     )
//                     // ),
//                   ),
//                 ),
//
//
//                 const SizedBox(height: 70),
//                 // Divider(
//                 //   color: Colors.black,
//                 // ),
//
//
//
//
//               InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/sendlocation');
//                 },
//                 child: Ink(
//                   width:180,
//                   padding:EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//
//                   child:
//                   Column(
//                     children:const [
//                       Icon(Icons.share_location,
//                         size: 50,
//                         color: Colors.blue,),
//                       Text(
//                         // '  View\nFire Service Location',
//                         'Fire Service Location',
//
//                       style: TextStyle(
//                           color:Colors.white,
//                           fontSize: 20,
//                         ),
//                       )
//                     ],
//
//                   ),
//                 ),
//
//               ),
//                 // TextButton.icon(
//                 //     style: TextButton.styleFrom(
//                 //       textStyle: const TextStyle(fontSize: 20),
//                 //     ),
//                 //     onPressed: () {
//                 //
//                 //       Navigator.pushNamed(context, '/sendlocation');
//                 //     },
//                 //     icon: Icon(Icons.share_location),
//                 //     label: Text(
//                 //         'Share Location'
//                 //     )
//                 // ),
//               ],
//             ),
//
//
//
//             // const SizedBox(height: 70),
//
//           ],
//         ),
//       //),
//     );
//   }
// }
//
//
// //________________________________________________________________________________________________________________________________
//
//
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:finalproject/main.dart';
import 'package:url_launcher/url_launcher.dart';
_makingPhoneCall() async {
  var url = Uri.parse("tel:999");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF2F2F2),
        //centerTitle: true,
        toolbarHeight: 100,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('FIRE ALERT',
          style:TextStyle(
            color:Color(0xff30475E),
            fontSize: 40,
          ) ,
        ),
      ),
      body:
      //SafeArea(


      //minimum: const EdgeInsets.all(54.0),
      //child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          // Divider(
          //   color: Colors.black,
          // ),
          InkWell(
            onTap: () {Navigator.pushNamed(context, '/nearestfs');},
            child:
            //Align(alignment: Alignment.center,),
            Ink(
              width: 380,
              padding: EdgeInsets.all(50.0),
              //margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child:
              TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/nearestfs');
                  },
                  icon: Icon(Icons.call,
                    size: 50,),
                  label: Text(
                    'Call The Nearest         \n'
                        '     Fire station',
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: 380,
            padding: EdgeInsets.all(20.0),
            //margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
            ),
            //color: Colors.black,
            child: TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.location_on,
                  size:50,),
                label: Text(
                  'User Location and\n '
                      '   Search Bar',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                )
            ),
          ),
          const SizedBox(height: 20),
          // Divider(
          //   color: Colors.black,
          // ),

          // ElevatedButton.icon(
          //   // child: const Text("Call to 999"),
          //   onPressed: () async {
          //     FlutterPhoneDirectCaller.callNumber("tel:999");
          //   },
          //   icon: Icon(Icons.call),  //icon data for elevated button
          //   label: Text("Call to 999"),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  launch("tel:" + Uri.encodeComponent('999'));
                  // FlutterPhoneDirectCaller.callNumber("Tel:999");

                  },
                child: Ink(
                  width:150,
                  padding:EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child:
                  Column(
                    children:const [
                      Icon(Icons.call,
                        size: 50,
                        color: Colors.blue,),
                      Text(
                        'Call 999',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],

                  ),
                  // child: TextButton.icon(
                  //     style: TextButton.styleFrom(
                  //       textStyle: const TextStyle(fontSize: 20),
                  //     ),
                  //     onPressed: () {
                  //       FlutterPhoneDirectCaller.callNumber("Tel:999");
                  //     },
                  //     icon: Icon(Icons.call,
                  //     size: 50,),
                  //     label: Text(
                  //         'Call to 999',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     )
                  // ),
                ),
              ),


              const SizedBox(height: 10),
              // Divider(
              //   color: Colors.black,
              // ),




              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/sendlocation');
                },
                child: Ink(
                  width:180,
                  padding:EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child:
                  Column(
                    children:const [
                      Icon(Icons.share_location,
                        size: 50,
                        color: Colors.blue,),
                      Text(
                        'Fire Service Location',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],

                  ),
                ),

              ),
              // TextButton.icon(
              //     style: TextButton.styleFrom(
              //       textStyle: const TextStyle(fontSize: 20),
              //     ),
              //     onPressed: () {
              //
              //       Navigator.pushNamed(context, '/sendlocation');
              //     },
              //     icon: Icon(Icons.share_location),
              //     label: Text(
              //         'Share Location'
              //     )
              // ),
            ],
          ),
          const SizedBox(height:20.0),
          InkWell(
            onTap: () {
              _launchURL('www.fireservice.gov.bd');
            },
            child: Ink(
              padding: EdgeInsets.all(40),
              width:380,
              height:200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                image: DecorationImage(image: AssetImage('assets/images/fire-truck.jpg'),
                    fit:BoxFit.cover ),
              ),

              child: Text('        Know more about \n'
                  'Bangladesh Fire Service & \n       '
                  '  Civil Defences ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow( // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.black
                      ),
                      Shadow( // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.black
                      ),
                      Shadow( // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.black
                      ),
                      Shadow( // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.black
                      ),
                    ]

                ),
              ),
            ),
          )



          // const SizedBox(height: 70),

        ],
      ),
      //),
    );
  }
}