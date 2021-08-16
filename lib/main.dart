import 'package:custom_paints/Components/LoginScreens/FacultyComponents/Add_elective.dart';
import 'package:custom_paints/Components/LoginScreens/FacultyComponents/Faculty_Dashboard.dart';
import 'package:custom_paints/Components/LoginScreens/Login.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Elective.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/ElectiveData/Elective_Report.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/ElectiveData/Elective_Scope.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Home.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Profile.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashBoardScreen/Rating.dart';
import 'package:custom_paints/Components/LoginScreens/StudentComponents/StudentDashboard.dart';
import 'package:flutter/material.dart';
import 'Components/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        //Elective Data Dashboard
        '/student/elective_report': (context) => Elective_Report(),
        '/student/futureScope': (context) => Elective_Scope(),

        //Faculty pages
        '/faculty/add_elective':(context) => Add_elective(),

        //Student Pages
        '/student_dashboard':(context) =>StudentDashboard(),
        '/student/home' :(context) =>Home(),
        '/student/elective':(context) =>Elective(),
        '/student/profile':(context) =>Profile(),
        '/student/rating': (context) =>Rating(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
