import 'package:flutter/material.dart';


/*
Remember : if any argument value can be null like icon? then at the time of calling
that argument always use ! mark after argument name (! this indicate it can not be null)
or you define that argument as required like btnName
 */
class roundbtn extends StatelessWidget {
   final String btnName;
   final Icon? icon;      //? means its values can be null
   final TextStyle? textStyle;
   final Color? bgcolor;
   final VoidCallback? callback;

  const roundbtn({Key? key,
   required this.btnName,
    this.icon,
    this.textStyle,
    this.bgcolor=Colors.blueAccent, //this indicate set default color of button
    this.callback
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        callback!();
      },
      child:icon!=null? Row(
        children: [
          icon!,
          Text(btnName,style: textStyle,),
        ],
      ):Text(btnName,style: textStyle,),
      style: ElevatedButton.styleFrom(
        primary: bgcolor,
        shadowColor: bgcolor,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        )
      )
    );
  }
}
