import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/2_class_object.dart';
import 'package:flutter_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/Custom_widgets/roundbtn.dart';


/*

initState() method are  define the initial state of the screen.
If you want to run  any code at the time of starting of the app then put
that code inside initState() function.

#This method only Available in StatefulWidget.

 */

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){

     /* Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>MyHomePage()));*/

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
        child: Center(
          child: Text("Welcome To TechTain Group",style: TextStyle(
            fontFamily: "Lalit",
            color: Colors.white,
            fontSize: 25,
          ),),
        ),
      ),
    );

  }
}
