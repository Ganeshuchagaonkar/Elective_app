
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Elective.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Home.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Profile.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Rating.dart';
import 'package:custom_paints/Components/SplashScreen.dart';
import 'package:flutter/material.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key key}) : super(key: key);

  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int _currentindex=0;
  final tabs=[
    
    Home(),
    Elective(),
    Rating(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        iconSize: 35,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.house_rounded,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_library,
              color: Colors.black,
              
            ),
            label: "Elective",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded, color: Colors.black),
              label: "Rating"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
              
            ),
            label: "Profile",
          )
        ],
        onTap: (index){
          setState((){
_currentindex=index;
          });
        },
          
      ),
    );
  }
}
