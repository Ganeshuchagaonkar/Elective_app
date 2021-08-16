import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Home.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

String name="";
String email="";
int phone;


class _ProfileState extends State<Profile> {
  @override
  void initState() { 
    super.initState();
    profileDetails();
  }

  Future profileDetails()async{
     final  SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
           name=prefs.getString("username");
     email=prefs.getString("email");
     phone=prefs.get("Mobile");
        });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xffFFFFFF),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 180,
          decoration: BoxDecoration(
              color: Color(0xffF5C43E),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 130, 30, 0),
          child: Column(children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffF8F8FF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        // color: Colors.orange.shade200,
                        color: Colors.black12.withOpacity(0.3),
                        offset: Offset(2, 5),
                        blurRadius: 8.0,
                        spreadRadius: 2)
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5.0,
              shadowColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "$email",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Divider(),
                      Text(
                        "Mobile Number :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "$phone",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Divider(),
                      Text(
                        "Sem :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "6th",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Divider(),
                      Text(
                        "Div :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "A",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 640, 30, 0),
          child: GestureDetector(
            onTap: () => {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(2, 4),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ],
                  color: Color(0xffC570ED)),
              child: Text(
                'Update Profile',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            IconButton(icon: Icon(Icons.arrow_back,size: 35,), onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentDashboard())
                    );
              
            }),
            SizedBox(width: 100,),
            Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          ],)
        ),
      ],
    );
  }
}
