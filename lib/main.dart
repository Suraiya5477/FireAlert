// import 'package:flutter/material.dart';
// import 'package:finalproject/pages/home.dart';
// import 'package:finalproject/pages/loading.dart';
// import 'package:finalproject/pages/location.dart';
// import 'package:finalproject/pages/nearestfs.dart';
// // import 'package:finalproject/pages/call999.dart';
// import 'package:finalproject/pages/sendlocation.dart';
//
//
// void main() => runApp(MaterialApp(
//     initialRoute: '/home',
//     routes: {
//       '/': (context) => Loading(),
//       '/home': (context) => Home(),
//       '/location': (context) => location(),
//       '/nearestfs': (context) => nearestfr (),
//       // '/call999' : (context) => call999 (),
//       '/sendlocation': (context) => sendlocation (),
//     }
// ));

import 'package:flutter/material.dart';
import 'package:finalproject/pages/home.dart';
import 'package:finalproject/pages/loading.dart';
import 'package:finalproject/pages/location.dart';
import 'package:finalproject/pages/nearestfs.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:finalproject/pages/call999.dart';
import 'package:finalproject/pages/sendlocation.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';


Future<void> main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
            // final FirebaseApp _fbApp = Firebase.initializeApp();
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => location(),
      '/nearestfs': (context) => nearestfr (),
      '/sendlocation': (context) => sendlocation (),
    }
));
}

