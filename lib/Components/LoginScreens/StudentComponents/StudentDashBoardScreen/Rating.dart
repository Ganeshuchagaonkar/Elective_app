import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Rating extends StatefulWidget {
  const Rating({Key key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  List electiveSubjects = ["Advance Java","IOT"];
  String statevalue;
  double ratingValue=0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25,100),
      width: MediaQuery.of(context).size.width,
      color: Color(0xffF5C43E),
      child:
       SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Give feedback",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(20),
             decoration: BoxDecoration(
                color: Color(0xffF2F1F1),
                borderRadius: BorderRadius.circular(15)
             ),
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: 
              SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Student reviews",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        filled: true,

                        contentPadding: EdgeInsets.fromLTRB(25, 15, 10, 15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(10)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(10)
                        ),
                        // border: InputBorder.none,
                        // filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Choose Elective",
                        fillColor: Color(0xffF2F1F1),
                      ),
                      value: statevalue,
                      onChanged: (value) {
                        setState(() {
                          statevalue = value;
                          print(statevalue);
                        });
                      },
                      items: electiveSubjects
                          .map((ele) =>
                              DropdownMenuItem(value: ele, child: Text(ele)))
                          .toList(),
                    ),
                    SizedBox(height: 15),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Text("$ratingValue",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                     Text("/5",style: TextStyle(fontSize: 20,color: Colors.grey),)
                   
                   ],),
                    SmoothStarRating(
                      size: 35,
                      rating: 0,
                      color: Color(0xffEA9C28),
                      borderColor: Color(0xffEA9C28),
                      allowHalfRating: false,
                      starCount: 5,
                      onRated: (value){
                        setState(() {
                                  ratingValue=value;
                                  print(ratingValue);            
                                            });

                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(50)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: 'Additional Comments',
                        fillColor: Color(0xffF2F1F1),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
      onTap: () => {
         
      },
      child: Container(
            width:100,
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(2, 4),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ],
                  color: Color(0xffC4C4C4)
                 
                  ),
            child: Text(
                'Not Now',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
            ),
      ),
    ),
                    GestureDetector(
      onTap: () => {
         
      },
      child: Container(
            width:150,
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                'Submit Reviews',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
            ),
      ),
    ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
      ),
       ),
    );
  }
}
