import 'package:finalproject/data.dart';
import 'package:finalproject/pages/location.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:location/location.dart';
// import 'package:finalproject/sendlocation';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    // getLocation().then((value){
    //   LocationData lData = value as LocationData;
    //   dlat = lData.latitude!;
    //   dlon = lData.longitude!;
    //   Navigator.pushNamed(context, '/home');
    // });
    getLocation();
  }
  Location location = Location();
  Future<void> getLocation () async{
    PermissionStatus permission  =  await location.hasPermission();
    if(permission==PermissionStatus.granted){
      location.getLocation().then((value) {
        LocationData lData =  value;
        dlat = lData.latitude!;
        dlon = lData.longitude!;

        print(dlat);
        print(dlon);
      });

      Navigator.pushNamed(context, '/home');
    }else{
      location.requestPermission().then((value) {
        getLocation();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.black,
              size: 50,
            ),
          ),

      // backgroundColor: Colors.white,
      // body: Center (
      //   child: SpinKitDancingSquare(
      //     color: Colors.black,
      //     size: 50.0,
      //   ),
      // ),
    );
  }
}