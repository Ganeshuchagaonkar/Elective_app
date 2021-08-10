import 'package:flutter/material.dart';
import 'dart:math';

class LoginPage extends StatefulWidget {
  
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: CustomPaint(
        painter:LoginPainter(),
        
          
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 90,),
                      Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20),
                        child: Material(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: TextFormField(
                              keyboardType: TextInputType.text,
                             
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(25, 22, 10, 22),
                                border: InputBorder.none,
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(50)
                                // ),
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(50)
                                // ),
                                hintText: 'Additional Comments',
                                fillColor: Color(0xffFAFFFE)
                              ),
                            ),
                        ),
                      ),
                       SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left:20,right: 20,),
                        child: Material(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: TextFormField(
                              keyboardType: TextInputType.text,
                             
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(25, 22, 10, 22),
                                border: InputBorder.none,
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(50)
                                // ),
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(50)
                                // ),
                                hintText: 'Additional Comments',
                                fillColor: Color(0xffFAFFFE)
                              ),
                            ),
                        ),
                      ),
                      SizedBox(height: 60,),
                       GestureDetector(
      onTap: () => {
       
      },
      child: Container(
          width:200,
          padding: EdgeInsets.symmetric(vertical: 14),
          alignment: Alignment.center,
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(2, 4),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ],
                  color: Color(0xff265AE1)
             
                  ),
          child: Text(
            'Login',
            style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
      ),
    ),
    SizedBox(height: 40,),
    Text("Login as"),
    SizedBox(height: 20,),
    InkWell(
      onTap: (){},
      child: Text("Faculty"),
    ),

                    ]
                  ),
                ),
              ),
            ),
          
      
      ),
    );
  }
}


class LoginPainter extends CustomPainter{
  Paint _paint;
  LoginPainter(){
 _paint=Paint()
       ..color=Colors.orange
       ..strokeCap=StrokeCap.round
       ..strokeWidth=10;
  }
  @override 
  void paint( Canvas canvas , Size size){
   
   var mainrect=Offset(0, 0) & Size(600,820);
   _paint.color=Color(0xffFFFFFF);
    canvas.drawRect(mainrect,_paint );
    canvas.restore();
    canvas.save();
    var topLeftCircle=Offset(85, 40);
    _paint.color=Color(0xffF2A32D);
    canvas.drawCircle(topLeftCircle, 94, _paint);
    canvas.restore();
    canvas.save();


    var toprightcircle=Offset(270, 70);
 _paint.color=Color(0xffEA9C28);
    canvas.drawCircle(toprightcircle, 135, _paint);
    canvas.restore();
    canvas.save();

    var bottomleftcircle=Offset(25, 750);
    _paint.color=Color(0xffEA9C28);
    canvas.drawCircle(bottomleftcircle, 58, _paint);
    canvas.restore();
    canvas.save();

 _paint.color=Colors.blue;
_paint.strokeWidth=3;
 _paint.style=PaintingStyle.stroke;
canvas.drawCircle(Offset(240,765), 14, _paint);
canvas.restore();
canvas.save();

_paint.color=Color(0xffEA9C28);
_paint.strokeWidth=3;
 _paint.style=PaintingStyle.stroke;
canvas.drawCircle(Offset(320,720), 20, _paint);
canvas.restore();
canvas.save();

canvas.rotate(pi/4);
canvas.drawRect(Rect.fromCircle(
    center: Offset(400/2, 20/2), radius: 6), Paint()..color = Colors.grey);
     canvas.restore();
     canvas.save();

//Bottom Rectangle
canvas.rotate(pi/4);
canvas.drawRect(Rect.fromCircle(
    center: Offset(1140/2, 1040/2), radius: 10), Paint()..color = Color(0xffC4C4C4));
    canvas.restore();
    canvas.save();
  

  

  }
  @override 
  bool shouldRepaint(CustomPainter oldDelegate){
    return null;

  }
}