import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/2_class_object.dart';
import 'package:flutter_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/Custom_widgets/roundbtn.dart';

//This StatefulWidget are created for Send data from one Screen to Another screen.

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome To TechTain Group ",
              style: TextStyle(fontFamily: "Lalit", fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Enter Name Here ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            roundbtn(
              btnName: "Send Data",
              bgcolor: Colors.black,
              textStyle: TextStyle(color: Colors.white, fontFamily: "Lalit"),
              callback: () {
               //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(name.text.toString()),));
              },
            )
          ],
        ),
      ),
    );
  }
}
