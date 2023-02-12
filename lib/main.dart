import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_app/CalculatorScreen.dart';
import 'package:flutter_app/Custom_widgets/roundbtn.dart';
//import 'package:flutter_app/ProfileScreen.dart';
//import 'package:flutter_app/Splash_Screen.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container Property",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1:
              TextStyle(fontSize: 21, fontFamily: 'Lalit', color: Colors.red),
          subtitle1: TextStyle(fontSize: 11, fontWeight: FontWeight.w800),
        ),
      ),
      //home: ProfileScreen(),
      home: BMI(),
    );
  }
}

//-------------------------------------------------------------------------------------

/*
   ///This STFUL widget are used only Center,Text and Container Widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),

      //Container Widget in Flutter and Center widget
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.deepOrange,
          child: Center(
              child: Text(
            "Flutter Point",
            style: TextStyle(color: Colors.white,
            fontWeight:FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
-------------------------------------------------------------------------------------------------
 */

//This Below syntax only for Elevated Button,Text Button and Outlined Button Only

/*
//-------------------------------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Types of Button"),
      ),
      body:Column(
        children: [
          ElevatedButton(
            child: Text("Elevated Button"),
            onPressed: (){
              print("Button Clicked !");
            },
          ),
          TextButton(
            child: Text("Text Button"),
            onPressed: (){
              print("Text Button is work Properly");
            },
            onLongPress: (){
              print("LongPressed !");
            },
          ),
          OutlinedButton(
            child: Text("Outlined Button"),
            onPressed: (){
              print("Action Alert");
            },
          ),
        ],
      )

       /*   Text Button syntax
      TextButton(
        child: Text("Submit"),
        onPressed: (){
          print("Text Button is work Properly");
        },
        onLongPress: (){
          print("LongPressed !");
        },
      ),
      */
    );
  }
}
--------------------------------------------------------------------------------------------------
 */

//How to add images in Flutter App

/*
/--------------------------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("How to add Image"),
      ),
      body: Image.asset('assets/images/login.png'),
    );
  }
}

----------------------------------------------------------------------------------
 */

//How to Use Row And Column in Flutter (Very Important code )

//-----------------------------------------------------------------------------------

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        brightness: Brightness.dark,
        title: Text("Row And Column Demo" ,style: TextStyle(color:Colors.white ),),
      ),
      body: Container(
        width: width,
        height: 200,
        color: Colors.lightGreen,
        child: Row(
          children: [
            Container(
              width: width * 0.5,
              height: 200,
              padding: EdgeInsets.only(left: 15, top: 15),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          '       Flutter Academy',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Divider(
                        thickness: 5,
                        height:5,
                        color: Colors.red,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: width * 0.35,
                          child: Text(
                            'While designing the Flutter app, you might have observed that some widgets look different on some of the devices. There can be several reasons for this to happen.',
                            style: TextStyle(fontSize: 8,color: Colors.blueGrey),
                          ),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: width*0.3,
                        child: Image.asset('assets/images/rating.png'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: width * 0.5,
              height: 200,
              child: Image.asset(
                'assets/images/cake.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

//-----------------------------------------------------------------------------------------
/* InkWell widget are used if you want to any widget is clickable or on click want to
 perform an action then you can use inkwell widget just wrap that widget from Inkwll widget

 EX- Container widget are warp from Inkwell widget and now Container is an clickable widget.
     Beacuse inkwell have some important property like onTap,OnDoubleTap and LongPressed


//-----------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Design"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: InkWell(
        onTap: (){
          print("Tapped");
        },
        onLongPress: (){
          print(" Long Pressed");
        },
        onDoubleTap: ()
        {
          print("Double Tap");
        },
        child: Container(
          height: 50,
          width: 70,
          color: Colors.teal,
        ),
      ),
    );
  }
}

---------------------------------------------------------------------------------------------
 */

//ScrollView are used if there is less space rather than needs or if you want to make component
//is scrollable then you can use ScrollView- SingleChildScrollView()

/*

ScrollView Direction is by Default vertical if want to add horizontal ScrollView
then change the direction of scrollView
syntax ->
scrollDirection: Axis.horizontal

---------------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super (key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChild ScrolllView"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.deepOrange,
              margin: EdgeInsets.only(bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [Container(
                    height: 200,
                    width: 400,
                    color: Colors.teal,

                  ),
                    Container(
                      height: 200,
                      width: 400,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      color: Colors.cyanAccent,
                    ),],
                ),
              ),
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.teal,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.blue,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.amberAccent,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.cyanAccent,
              margin: EdgeInsets.only(bottom: 10),
            ),
          ],
        ),
      ),
    );
  }
}

-------------------------------------------------------------------------------------------------
 */
/*
ListView - is used to display similar content in form of Row and Column and
Automatically enable ScrollView if there is need

Note - in ListView ,ScrollView direction is by default vertical.You can change it
-> scrollDirection: Axis.horizontal,

 --------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.cyanAccent,
            margin:EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,
            margin:EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink,
            margin:EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent,
            margin:EdgeInsets.only(bottom: 10),
          )
        ],
      ),
    );
  }
}

--------------------------------------------------------------------------------------------------------

 */

/*
ListView.builder is an Dynamic List that add te widget on screen dynamically from database
but all Widgets are similar
Ex -
Show the list of restaurant in zomato app using ListView.builder and Restaurant
name are fetch from Database

Note - in ListView.builder ,ScrollView direction is by default vertical.You can change it
-> scrollDirection: Axis.horizontal,


---------------------------------------------------------------------------------------------------



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var arr_data=['Java','Automata','Coa','MI','ERM','DBMS'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          margin:EdgeInsets.only(bottom: 10),
          color: Colors.deepPurpleAccent,
          child: Center(child: Text(arr_data[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),

        );

      },
      itemCount: arr_data.length,
      itemExtent: 150,
      // scrollDirection: Axis.horizontal,
      ),
    );
  }
}

---------------------------------------------------------------------------------------------------
 */

/*
ListView.separated are used to provide a separted widget in between ListView widget

--------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arr_data=['Java','Automata','Coa','MI','ERM','DBMS'];
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          margin:EdgeInsets.only(bottom: 10),
          color: Colors.deepPurpleAccent,
          child: Center(child: Text(arr_data[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),

        );

      },
        itemCount: arr_data.length,
        separatorBuilder: (context,index){
        return Divider(
          thickness: 3,
          height: 5,
        );
        },
        // scrollDirection: Axis.horizontal,
      ),
    );
  }
}

-----------------------------------------------------------------------------------------------
 */

/* BoxDecoration On Container widgets - BorderRadius,Border and BoxShadow and shape
##
if you use BoxDecoration in Container then always color property used
inside the BoxDecoration never used outside the BoxDecoration it gives error

##

BorderRadius and shape property you can not use at same time and in same widget



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decoration On Container"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white12,
        child:Center(
          child: Container(
            height: 150,
            width: 150,
            child: Center(child: Text("Decoration")),
            decoration: BoxDecoration(
              color: Colors.pink,
                borderRadius: BorderRadius.circular(75), // it generate circle if give radius height/2

                //--------------------------------------------------
                //How to Add Border
                border: Border.all(
                  color: Colors.black54,
                  width: 5,
                ),
           //--------------------------------------------------------------

              boxShadow:[BoxShadow(
                color: Colors.deepOrange,
                blurRadius: 21,
                spreadRadius: 21,
              )],

              //------------------------------------------------------------------

              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(20))
            ),
          ),
        ) ,
      ),
    );
  }
}

-------------------------------------------------------------------------------------------------
 */
/*
Expended widget with Row and Column

## column widget have many elements widget but if you want to a particular Column element
 cover all available  space of column MainAxis(Vertical) then that widget simpally wrap
 with the Expended widget.

##
 Expended widget are work on Row widget as well but in Row widget Expended widget cover all available
 space of Row MainAxis(Horizontal)

 **If you want to two or more Column or Row element cover all Available screen space with
 same MainAxis Ratio then that all element just wrap with Expended widget

 ##



 */

//Row Element widget 1 and 4 are divided in equal size of available space on screen.because both
// widget are wrap with Expended widget

/*

-------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended With Row and Column"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              color: Colors.deepOrange,
            ),
          ),
          Container(
            height: 100,
            width: 50,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            width: 50,
            color: Colors.yellow,
          ),
          Expanded(child:
          Container(
            height: 100,
            width:50,
            color: Colors.cyanAccent,
          ),
          ),


        ],
      ),
    );
  }
}

----------------------------------------------------------------------------------------------
 */

/*
Expended widget with flex property.
flex property are used to divide the whole screen in same size of Container or others.

## jitne parts me chaho utne parts me screen ko divide kr skte h with same size.

 */
/*

-----------------------------------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended With flex"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.deepOrange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 2,
            child:
          Container(
            height: 100,
            color: Colors.cyanAccent,
          ),
          ),
          Expanded(
            flex: 2,
            child:
            Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child:
            Container(
              height: 100,
              color: Colors.pink,
            ),
          ),


        ],
      ),
    );
  }
}

----------------------------------------------------------------------------------------------
*/

/*
ListTile Contains Mainly 4 component

1.leading - its used mainly for Avatar Image in circular form
2.title   - Its used for set title of the company or person
3.subtitle - Its used for set subtitle of the company or person
4.trailing -Its used for set endParts of the company or person Like icons

## its all property are used in listTile not necessary, you can use separated 1 or more

 */

/*
-----------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var User_name = [
      'Sushant Resort',
      'Shekhar Resort',
      'Kapil Resort',
      'Tarun Resort',
      'Parul Resort','Sushant Resort',
      'Shekhar Resort',
      'Kapil Resort',
      'Tarun Resort',
      'Parul Resort'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(

              tileColor: Colors.pink,
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Text('${index+1}'),
              title: Text(User_name[index]),
              subtitle: Text("Good Morning Guys !~"),
              trailing: Icon(Icons.add),
            );
          },
          separatorBuilder:(context,index){
            return Divider(
              height:5 ,
              thickness: 5,
            );
          },
          itemCount: User_name.length),
    );
  }
}

---------------------------------------------------------------------------------------------
 */

/*
Circle Avatar are used to show an Image or text in circular format.

--------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.pink,
          child: Column(
            children: [SizedBox(
              height: 10,
            ),
              CircleAvatar(

                backgroundImage: AssetImage('assets/images/boy.png'),
                radius: 30,
              ),
              SizedBox(
                height: 7,
              ),
              Text("Lalit Kumar",style: TextStyle(color:Colors.white),)
            ],
          )
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------

How to add Custom font family ->

1.Search Google fonts and download font family zip file(.ttf)
2.copy the .ttf file and paste Android studio fonts folder inside assets
3.and that font family are added in pubspec.yaml file
4.and apply fontFamily: 'fontFamily name'

 */

/*

-----------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Fonts'),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.black,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              'Google Flutter Online Course at FITA Academy provides best practical'
              ' training of Google flutter and dart with use of advanced tools '
              'and technology. The training focuses on inculcating the proficiency '
              'in building multi platform mobile applications and design of interactive'
              ' and captivating templates for mobile devices. Moreover, the faculty will'
              ' introduce to the students, the primary concepts as well as advanced '
              'concepts of developing software applications in android and iOS operating '
              'systems through efficient use of flutt',
              style: TextStyle(
                  fontFamily: 'Lalit',
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
          ),
        ));
  }
}

--------------------------------------------------------------------------------------------
 */
/*
Style Management - are used to reduced repeatition of the code like two widget are repeat
the same style that style put on texttheme inside Material App

syntax -> inside theme :ThemeData(
textTheme: TextTheme(
        headline1: TextStyle(fontSize: 21,fontFamily: 'Lalit',color:Colors.red),
        subtitle1: TextStyle(fontSize: 11,fontWeight: FontWeight.w800),
      ),)

      ## get style-
      style:Theme.of(context).textTheme.headline1

      ## add extra style with above given style
      style:Theme.of(context).textTheme.headline1!.copyWith(color:Colors.red),


 */

/*
------------------------------------------------------------------------------------------



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remove repeated style"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 200,
              color:Colors.pink,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Heading'

                //copyWith are used to provide extra style for particular element

              ,style: Theme.of(context).textTheme.headline1!.copyWith(color:Colors.white),),
            ),
            Container(
              height: 70,
              width: 200,
              color:Colors.pink,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Heading'
                ,style: Theme.of(context).textTheme.subtitle1,),
            ),
            Container(
              height: 70,
              width: 200,
              color:Colors.pink,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Heading'
                ,style: Theme.of(context).textTheme.headline1,),
            ),
            Container(
              height: 70,
              width: 200,
              color:Colors.pink,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Heading'
                ,style: Theme.of(context).textTheme.subtitle1,),
            ),
          ],
        ),
      ),

    );
  }
}

---------------------------------------------------------------------------------------------
*/

/*
Card Widget are used to show elevated Container or box

---------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Card(
        shadowColor: Colors.cyan,
        elevation: 12,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Card Widget"),
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------------------
 */

/*
TextField are basically use to create Forms and all about forms

## iconButton tabhi use kare jb button ke click pr koi action perform
krwana ho otherwise icon hi use kare

--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
*/

/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var email=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //appBar: AppBar(
      //title: Text("Login Form Important Code"),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Center(
                  child: Icon(
                Icons.lock,
                size: 40,
                color: Colors.black,
              )),
              SizedBox(
                height: 16,
              ),
              Text(
                "Login To Techtain",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Lalit'),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Enter Phone or Email",
                    // hintStyle: TextStyle(color: Colors.deepOrange,fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 1)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  controller: pass,
                  obscuringCharacter: '#',
                  // keyboardType: ,
                  decoration: InputDecoration(
                    hintText: "Enter Passward",
                    prefixIcon: Icon(
                      Icons.admin_panel_settings_sharp,
                      color: Colors.grey,
                    ),
                    //prefixIconColor: Colors.grey,
                    // enabled: false,
                    // disabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10),
                    //     borderSide: BorderSide(
                    //       color: Colors.red,
                    //       width: 2,
                    //     )
                    // ),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 1,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                String User=email.text;
                String passward=pass.text;
                print("Email id: $User Password :$passward");
                email.clear();
                pass.clear();
              }, child: Text('LOGIN'))
            ],
          ),
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------------------

*/

/*

How To get Current Date and Time and setState() function are used
to update the time at every instances

------------------------------------------------------------------------------------------------



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.access_time),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.grey,
                child: Center(
                    child: Text(
                        "Time :${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.grey,
                child: Center(
                    child: Text(
                        "Date :${DateTime.now().day} : ${DateTime.now().month} : ${DateTime.now().year}")),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Get Time"))
            ],
          ),
        ),
      ),
    );
  }
}

------------------------------------------------------------------------------------------------
 */

/*
Get a good format of date and time using Intl dependencies
1.goto this url (https://pub.dev/packages/intl/install) and check latest version

2.and import an dependency in pubspec.yaml file on dependencies parts

dependencies:
  intl: ^0.18.0

3.  and add this library jisme apko datetime format chahiye

import 'package:intl/intl.dart';

----------------------------------------------------------------------------------------
 */

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.access_time),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.grey,
                child: Center(
                    child: Text("Time :${DateFormat('MMMM').format(time)}")),

                  /*
                  -----------------------------------------------------------------------
                  //Text("Time :${DateFormat('jms').format(time)}")),
                  //Text("Time :${DateFormat('yMMMd').format(time)}")),
                  //Text("Time :${DateFormat('yMMMMEEEEd').format(time)}")),
                  //Text("Time :${DateFormat('EEEE').format(time)}")), //get only day
                  //Text("Time :${DateFormat('MMMM').format(time)}")), //get only month
                 --------------------------------------------------------------------------------
                   */

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.grey,
                child: Center(
                    child: Text(
                        "Date :${DateFormat('Hms').format(time)}")),

              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Get Time"))
            ],
          ),
        ),
      ),
    );
  }
}
---------------------------------------------------------------------------------------------------
 */

/*

Date Picker are basically used for pick a date for selectingthe date of bith and other purpose as well

----------------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selected Date"),
            ElevatedButton(onPressed: () async {
              DateTime? datepicker=await showDatePicker(
                context: context,
                initialDate:DateTime.now() ,
                firstDate: DateTime(2020),
                lastDate: DateTime(2024),
              );
              if(datepicker!=null)
                {
                  print("Selected Date: ${DateFormat("yMMMd").format(datepicker)}");
                }
            },
                child:Text("Pick  Date"),
            )
          ],
        ),
      ),
    );
  }
}
-------------------------------------------------------------------------------------
*/
//--------------------------------------------------------------------------------------
/*

Time Picker are used  for pick the time at timing dialog.


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: ElevatedButton(
            onPressed: () async {
              TimeOfDay? timepicker =await showTimePicker(
                      context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial //by default set dial
                 // initialEntryMode: TimePickerEntryMode.input
              );
              if(timepicker!=null)
              {
                print("Selected Time :${timepicker.hour}:${timepicker.minute}");

                }
            },
            child: Text("Pick Time"),
          ),
        ),
      ),
    );
  }
}
----------------------------------------------------------------------------------------------
*/

/*
GridView are used for design an screen in row and column form.and GridView work on
Column concept.There is three form of GridView

1.GridView.count
2.GridView.builder
3.GridView.extent

1.use Padding widget to provide the space between the each column.

2.crossAxisSpacing: are used to provide space between column.

3.mainAxisSpacing are used to provide space between row.

4.GridView also have own scrollView.

5.GridView.count - can not give the space in left and right side.

## GridView.count is work on ,on the basis of count(crossAxisCount:),
 */

/*

-----------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var colorName=[Colors.grey,Colors.deepOrange,Colors.green,Colors.cyan,Colors.pink,Colors.yellow,
    Colors.lightGreenAccent,Colors.black87];
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color:colorName[0],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color:colorName[1],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color:colorName[2],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color:colorName[3],
          ),
        ),
        Container(
          color:colorName[4],
        ),
        Container(
          color:colorName[5],
        ),
        Container(
          color:colorName[6],
        ),
        Container(
          color:colorName[7],
        ),
      ],
      ),
    );
  }
}

-----------------------------------------------------------------------------------------
## 3.GridView.extent are same as GridView.count but count divide the screen on the basis of
count and extent are divide the screen on the basis of given width for each column.if screen
 size is increase then column values in each row is also increase.

*/

/*
------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var colorName=[Colors.grey,Colors.deepOrange,Colors.green,Colors.cyan,Colors.pink,Colors.yellow,
      Colors.lightGreenAccent,Colors.black87];

    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 150,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,
        children: [

          Container(
            color:colorName[0],
          ),
          Container(
            color:colorName[1],
          ),
          Container(
            color:colorName[2],
          ),
          Container(
            color:colorName[3],
          ),

          Container(
            color:colorName[4],
          ),
          Container(
            color:colorName[5],
          ),
          Container(
            color:colorName[6],
          ),
          Container(
            color:colorName[7],
          ),

        ],
      ),
    );
  }
}
---------------------------------------------------------------------------------------

*/

/*
GridView.builder are used for same purpose like GridView.count and extent,
but GridView.count and extent are work on only static content and builder are
used for dynamic content.

## if structure of GridView is same and only content is different then
you can use GridView.builder.

 */

/*

----------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var colorName = [
      Colors.grey,
      Colors.deepOrange,
      Colors.green,
      Colors.cyan,
      Colors.pink,
      Colors.yellow,
      Colors.lightGreenAccent,
      Colors.black87
    ];

    var name = [
      "Column 1",
      "Column 2",
      "Column 3",
      "Column 4",
      "Column 5",
      "Column 6",
      "Column 7",
      "Column 8"
    ];

    return Scaffold(
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: colorName[index],
            child: Center(child: Text(name[index],style: TextStyle(color: Colors.white),)),
          );
        },
        itemCount: colorName.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 12
        ),

        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        // ),

      ),
    );
  }
}
----------------------------------------------------------------------------------------
 */

/*
CallBack function are used for manage of data in your app.
if you want to tap on button execute a function that function is called callback function.
it passed as a argument to onTap property.

## it is basically used in custom widget concept.

-----------------------------------------------------------------------------------------


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    void callBack()
    {
      print("Call Back Function");
    }
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: callBack,
            child: Text("Click Here")
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------
*/

/*
Custom Widget are use for Mainly two purpose :

1.To make your code is easy and readable and understand able.
2.To reduce  code redundancy
3.Your complex UI make it simpler.



 */

/*

----------------------------------------------------------------------------------------------
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Header(),
          LTile(),
          Small(),
          Footer(),
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------------------------

//Header
class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(bottom: 5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height / 2))),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/boy.png'),
                      radius: 20,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

//---------------------------------------------------------------------------------------

//ListTile Design

class LTile extends StatefulWidget {
  const LTile({Key? key}) : super(key: key);

  @override
  State<LTile> createState() => _LTileState();
}

class _LTileState extends State<LTile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(bottom: 5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                textColor: Colors.grey,
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/boy1.jpg'),
                ),
                title: Text("Lalit Kumar"),
                subtitle: Text("Uiet Kurukshetra"),
                trailing: Icon(Icons.delete),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}

//------------------------------------------------------------------------------------------

//Small Conatiner design

class Small extends StatefulWidget {
  const Small({Key? key}) : super(key: key);

  @override
  State<Small> createState() => _SmallState();
}

class _SmallState extends State<Small> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.white12,
        margin: EdgeInsets.only(bottom: 5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              width: 80,
              color: Colors.lightGreenAccent,
              margin: EdgeInsets.all(10),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------------------------

//Footer

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Card(
        child: Container(
          color: Colors.white12,
          margin: EdgeInsets.only(bottom: 5),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                color: Colors.brown,
                margin: EdgeInsets.all(10),
              );
            },
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}

*/
/*
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
Stack widget are used for provide overlapping between different widgets like Container.

if you want to see overlapping in your app then use always different size for each widgets.

Stack widget also use for create relative design of widgets;

 */

/*
---------------------------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 160,
              width: 160,
              color: Colors.yellow,
            ),
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
-----------------------------------------------------------------------------------------
 */

/*

How to create custom widget for a particular design in separate dart file

we make a roundbtn custom widget for making particular design of button.
 */

/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                 margin: EdgeInsets.only(bottom: 15),
                height: 60,
                width: 100,
                child:roundbtn(btnName: "Login",
                  bgcolor: Colors.lightGreenAccent,
                  icon: Icon(Icons.play_arrow),
                  textStyle: TextStyle(color: Colors.black),
                  callback: (){
                    print("Music are play --");
                  },

                ),
              ),
              Container(
                height: 60,
                width: 100,
                margin: EdgeInsets.only(bottom: 15),
                child:roundbtn(btnName: "Login",
                  bgcolor: Colors.black,
                 // icon: Icon(Icons.play_arrow),
                  textStyle: TextStyle(color: Colors.white),
                  callback: (){
                    print("Music are play --");
                  },

                ),
              ),
               Container(
                height: 60,
                width: 100,
                child:roundbtn(btnName: "Cancel",
                  bgcolor: Colors.red,
                  icon: Icon(Icons.play_arrow),
                  textStyle: TextStyle(color: Colors.white),
                  callback: (){
                    print("Music are play --");
                  },

                ),
              ),
            ],
          ),
        ),
      );
  }
}


 */

/*
----------------------------------------------------------------------------------------

Wrap widget :-

is same as Row and column widget but only deference is if you
use Row or column widget and put many Container inside row or column and at a time screen
 size is not sufficient for a particular Container then app give a Pixel render error.

 but in case of Wrap widget if screen size is not sufficient then Container is shifted in
 next Row or next column and never give pixel error.

 ##Dy defalut Wrap widget direction is horizontal

 ----------------------------------------------------------------------------------------
 */

/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Wrap(
        spacing: 10,  // this is work as mainAxis
        runSpacing: 10, //this is work as crossAxis
        direction:Axis.vertical ,
        //alignment: WrapAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 100,
            color: Colors.red,
          ),

          Container(
            height: 80,
            width: 100,
            color: Colors.deepPurple,
          ),

          Container(
            height: 80,
            width: 100,
            color: Colors.pink,
          ),

          Container(
            height: 80,
            width: 100,
            color: Colors.blueAccent,
          ),

          Container(
            height: 80,
            width: 100,
            color: Colors.black,
          ),

          Container(
            height: 80,
            width: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
----------------------------------------------------------------------------------
*/

/*
SizedBox is basically  used for provide space between two widgets.if you not given
height and width for child widgets then child widget automatic take height and width
from parent widget.

1.SizedBox.expand() ,In SizedBox.expand(), child widget take max height and width
from parent widget.

2.SizedBox.shrink() , In SizedBox.shrink() ,child widget take min height and width
from parent widget.

3.SizedBox.square() is used for create square shape sizedbox.

## To provide the min height and width and max height and width to the any widget use
ConstrainedBox() widget.


----------------------------------------------------------------------------------------
 */
/*
----------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 70,
            maxWidth: 150,
            minHeight: 30,
            minWidth: 70,
          ),
          child:SizedBox.shrink( //used min height and width
          child: ElevatedButton(
    child: Text("Login"),
    onPressed: (){},
    ),
    ),


        ),
      ),

    /*
          SizedBox.expand( //use max height and width
            child: ElevatedButton(
              child: Text("Login"),
              onPressed: (){},
            ),
          ),
*/

      /*
      Center(
        child: SizedBox(
          height: 40,
          width: 90,
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: (){},
          ),
        ),
      ) ,

       */

    );
  }
}
---------------------------------------------------------------------------------
 */

/*
SizedBox.square() Implementation ->
----------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.square(
          dimension: 250,
          child:ElevatedButton(
            child: Text("Login"),
            onPressed: (){},
          ) ,
        ),
      ),
    );
  }
}

-------------------------------------------------------------------------------------------
 */
/*
RichText() widget are used to provide different style on the text and use different colors
to make text stylish and beautiful

----------------------------------------------------------------------------------------------



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(  //this is default text style
              fontFamily: "Lalit",
            ),
              children: [
            TextSpan(
                text: 'Hello!',
                style: TextStyle(
                  fontFamily: 'Lalit',
                  fontSize: 15,
                  color: Colors.red,
                )),
            TextSpan(
                text: ' Developer ',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueAccent,
                  fontFamily: 'Lalit',
                  fontWeight: FontWeight.w800,
                )),
            TextSpan(
                text: ' Welcone To ',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lalit',
                  color: Colors.cyan,
                )),
            TextSpan(
                text: ' Developer!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.pink,
                  fontFamily: 'Lalit',
                  fontWeight: FontWeight.w800,
                )),
          ]),
        ),
      ),
    );
  }
}

---------------------------------------------------------------------------------------
 */

/*
How to Add Font Awesome Icons in Flutter

1.Firstly go ('https://pub.dev/packages/font_awesome_flutter/install')

2.add dependencies in pubspec.yaml file

3.add a Library in current working page ("import 'package:font_awesome_flutter/font_awesome_flutter.dart';")

 ------------------------------------------------------------------------------------------


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.youtube,size: 30,color: Colors.red,),
            FaIcon(FontAwesomeIcons.google,size: 26,color: Colors.grey,)
          ],
        ),
      )
    );
  }
}
----------------------------------------------------------------------------------------------
 */

/*
Positioned() widget are basically used for place any widget at a specific place
in whole app screen

-----------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

-----------------------------------------------------------------------------------------
 */

/*

StatefulWidget are basically used at that  time when your app UI is changed at runtime.
for Example in case of counter app.

----------------------------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "How Many Times Elevated Button are pressed ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text('$count',style: TextStyle(color: Colors.white),),
            SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });

              },
              child: FaIcon(
                FontAwesomeIcons.plus,
                size: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

---------------------------------------------------------------------------------------
 */

/*

Calculator Important code

-----------------------------------------------------------------------------------------
_________________________________________________________________________________________


class MyHomePage extends StatefulWidget
{
  @override
  State<MyHomePage>createState()=>MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
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
              child: Text("Operation Result : ${result.toStringAsFixed(2)}",style: TextStyle(
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
------------------------------------------------------------------------------------------
 */

/*
ConstraintBox are basically used for provide min and max width and height
for a particular widget.

## SizedBox.expand() take max height and width from parent.
##SizedBox.shrink() take min height and width from parent.

----------------------------------------------------------------------------------------


class MyHomePage extends StatefulWidget
{
  @override
  State<MyHomePage>createState()=>MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 200,
          maxHeight: 200,
        ),
        child: SizedBox.shrink( // it take min height and width from parent
          child: Container(
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}
-----------------------------------------------------------------------------------------
 */

/*


###########################

How To Switch One Screen to Another Screen using MaterialPageRoute and Navigator and
Navigator are work on Stack Principle.

1.Navigator.push() are used to push the current screen at the top of previous screen.

2.Navigator.pushReplacement() are used to pop the current screen and push the
next screen in the stack.

3.If you want to never come back this screen then use pushReplacement() with Navigator


------------------------------------------------------------------------------------------

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Switch To Next Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: FaIcon(FontAwesomeIcons.arrowRight,size: 40,color: Colors.white,),
            onPressed: (){

              Navigator.push(context,
                  MaterialPageRoute(builder:
                      (context) => CalculatorScreen(),));
            },
          ),
        ),
      ),
    );
  }
}

-----------------------------------------------------------------------------------------
 */

/*
This code is basically used in implementation of splash screen.

--------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard Screen"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
        child: Center(
          child: Text("Welcome To DashBoard",style: TextStyle(
            fontFamily: "Lalit",
            color: Colors.white,
            fontSize: 25,
          ),),
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------=-----
 */

/*

This StatelessWidget are created for Receive the  data from ProfileScreen.

-----------------------------------------------------------------------------------------
class MyHomePage extends StatelessWidget {

 var profilename;

MyHomePage(this.profilename);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome To $profilename",style: TextStyle(color: Colors.white),),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

-------------------------------------------------------------------------------------------
 */

/*
Implementation of RangeSlider or like a Volume Button.

 ---------------------------------------------------------------------------------------


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //set the Range Slider Values Range
  RangeValues values = RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {

    //Set the Label of Range Slider
    RangeLabels label=RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
        child: Center(
          child: RangeSlider(
            values: values,
            labels: label,
            divisions: 10,
            min: 1,
            max: 100,
            activeColor: Colors.white,
            inactiveColor: Colors.blueGrey,
            onChanged: (newValue) {
              values=newValue;
              print("${values.start} : ${values.end}");
              setState(() {
              });
            },
          ),
        ),
      ),
    );
  }
}

-----------------------------------------------------------------------------------
 */

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => BMIState();
}

class BMIState extends State<BMI> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result = "";
  var msg = "";
  var bgcolor = Colors.indigo.shade100;
  var textcol = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:bgcolor ,
      body: Container(
        color: bgcolor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calculate,
              size: 45,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "BMI Calculator",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Lalit",
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter Your Weight ( In Kg )"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: ftController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter Your Height ( In Feet )"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: inchController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter Your Height ( In Inch )"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            roundbtn(
              btnName: "Get Result",
              textStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              bgcolor: Colors.black,
              callback: () {
                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inchController.text.toString();

                if (wt != "" && ft != "" && inch != "") {
                  var iwt = int.parse(wt);
                  var ift = int.parse(ft);
                  var iinch = int.parse(inch);

                  var total_inch = (ift * 12) + iinch;

                  var total_cm = total_inch * 2.54;

                  var total_mt = total_cm / 100;

                  var bmi = iwt / (total_mt * total_mt);

                  setState(() {
                    if (bmi < 18) {
                      msg = "You are Under Weight !";
                      bgcolor = Colors.red;
                    } else if (bmi > 25) {
                      msg = "You are OverWeight !";
                      bgcolor = Colors.orange;
                    } else {
                      msg = "You are Healthy !";
                      bgcolor = Colors.green;
                    }
                    result = " $msg \n Your BMI is ${bmi.toStringAsFixed(3)}";
                  });
                } else {
                  setState(() {
                    textcol = Colors.red;
                    result = "Please Fill all the Required Input !!";
                  });
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                child: result != "Please Fill all the Required Input !!"
                    ? Text(
                        '$result',
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Lalit"),
                      )
                    : Text(
                        '$result',
                        style:
                            TextStyle(color: Colors.red, fontFamily: "Lalit"),
                      ))
          ],
        ),
      ),
    );
  }
}
