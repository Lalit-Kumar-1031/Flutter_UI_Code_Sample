import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/Custom_widgets/roundbtn.dart';


class CalculatorScreen extends StatefulWidget
{
  @override
  State<CalculatorScreen>createState()=>CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen>
{
  var no1controller=TextEditingController();
  var no2controller=TextEditingController();
  var result;


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width ,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            FaIcon(FontAwesomeIcons.calculator,size: 40,color: Colors.black,),
            SizedBox(
              height: 30,
            ),
            Text("Calculate Your Life Problem..",style: TextStyle(
              fontFamily: "Lalit",
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //height:MediaQuery.of(context).size.height*0. ,
                  width: MediaQuery.of(context).size.width*0.35,
                  child: TextField(
                    controller: no1controller,
                    keyboardType: TextInputType.number,
                    decoration:InputDecoration(
                      hintText: "Enter Number ",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1,
                        ),
                      ),
                    ) ,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  //height:MediaQuery.of(context).size.height*0. ,
                  width: MediaQuery.of(context).size.width*0.35,
                  child: TextField(
                    controller: no2controller,
                    keyboardType: TextInputType.number,
                    decoration:InputDecoration(
                      hintText: "Enter Number ",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1,
                        ),
                      ),
                    ) ,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: Text("Operation Result : ${result}",style: TextStyle(
                fontFamily: "Lalit"
              ),),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  width: 70,
                  child: roundbtn(
                    btnName: "+",
                    textStyle: TextStyle(color: Colors.white),
                    bgcolor: Colors.black,
                    callback: (){
                      setState(() {
                        var no1=int.parse(no1controller.text.toString());
                        var no2=int.parse(no2controller.text.toString());

                        result=no1+no2;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: roundbtn(
                    btnName: "-",
                    textStyle: TextStyle(color: Colors.white),
                    bgcolor: Colors.black,
                    callback: (){
                      setState(() {
                        var no1=int.parse(no1controller.text.toString());
                        var no2=int.parse(no2controller.text.toString());

                        result=no1-no2;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: roundbtn(
                    btnName: "*",
                    textStyle: TextStyle(color: Colors.white),
                    bgcolor: Colors.black,
                    callback: (){
                      setState(() {
                        var no1=int.parse(no1controller.text.toString());
                        var no2=int.parse(no2controller.text.toString());

                        result=no1*no2;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: roundbtn(
                    btnName: "/",
                    textStyle: TextStyle(color: Colors.white),
                    bgcolor: Colors.black,
                    callback: (){
                      setState(() {
                        var no1=int.parse(no1controller.text.toString());
                        var no2=int.parse(no2controller.text.toString());

                        result=no1/no2;

                      });
                    },
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
