import 'dart:async';

import 'package:custom_paints/Components/LoginScreens/Login.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class SplashScreen extends StatefulWidget {
 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:20),
        child: CustomPaint(
          painter:  SplasScreenPainter(),
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.auto_stories,color: Colors.blue,),
                    SizedBox(width:14),
                    Text("Career Partner",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
               
                  ],
                ),
                 SizedBox(height:15),
                Text("A mind troubled by a doubt cannot focus"),
                Text("on the course to victory"),


              ],
            )
            ),
        ),
        
      ),
    );
  }
}



 
 class SplasScreenPainter extends CustomPainter{
   Paint _paint;
     SplasScreenPainter(){
       _paint=Paint()
       ..color=Colors.orange
       ..strokeCap=StrokeCap.round
       ..strokeWidth=10;
     }
   @override
   void paint(Canvas canvas,Size size){
    


var toprightCircle=Offset(320, 180);
_paint.color=Colors.orangeAccent;
canvas.drawCircle(toprightCircle, 75, _paint);

_paint.color=Colors.blue;

_paint.style=PaintingStyle.fill;
canvas.drawCircle(Offset(310,95), 10, _paint);



_paint.color=Colors.blue;
_paint.strokeWidth=3;
_paint.style=PaintingStyle.stroke;
canvas.drawCircle(Offset(210,170), 15, _paint);



//Bottom Circle
var topleftCircle=Offset(18, 700);
_paint.color=Colors.orangeAccent;
_paint.style=PaintingStyle.fill;
canvas.drawCircle(topleftCircle, 120, _paint);


 
_paint.color=Colors.white;
canvas.drawCircle(Offset(52,675), 15, _paint);

_paint.color=Colors.grey[400];
// _paint.strokeWidth=8;
canvas.drawCircle(Offset(145,620), 7, _paint);

_paint.color=Colors.grey[400];

canvas.drawCircle(Offset(25,750), 6, _paint);


 } 
   @override
   bool shouldRepaint(CustomPainter oldDelegate){
     return null;
   }
 }