import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:custom_paints/Config_url.dart' as config;

class Elective extends StatefulWidget {
  const Elective({Key key}) : super(key: key);

  @override
  _ElectiveState createState() => _ElectiveState();
}

class _ElectiveState extends State<Elective> {
  @override
  void initState() { 
    super.initState();
    getelective_subject();
    
  }
  List electiveSubjects = [];
  var statevalue;
  
  bool checkboxvalue = false;

  Future getelective_subject()async {
    var res=await http.get(Uri.http(config.BaseUrl, 'electives/semelectives/student/2'),
     );

     setState(() {
        electiveSubjects= jsonDecode(res.body);
          });

     print(electiveSubjects);

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xffF5C43E),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 140, left: 165),
            child: Icon(
              Icons.local_library,
              size: 60,
              color: Colors.black,
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 235, 40, 0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 15, 10, 15),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffEA9C28), width: 3.0),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffEA9C28), width: 3.0),
                            borderRadius: BorderRadius.circular(50)),
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Choose Elective",
                        fillColor: Colors.white,
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
                              DropdownMenuItem(value: ele['elective_id'], child: Text(ele['elective_name'])))
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(25, 15, 10, 15),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffEA9C28), width: 3.0),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffEA9C28), width: 3.0),
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'CGPA',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 0, 10),
                    child: Row(
                      children: [
                        new Checkbox(
                          //  title: Text("Remember me"),
                          value: checkboxvalue,
                          onChanged: (newvalue) {
                            setState(() {
                              checkboxvalue = newvalue;
                            });
                            print(checkboxvalue);
                          },
                        ),
                        Text("Remember Me")
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(context, '/student/elective_report')
                    },
                    child: Container(
                      width: 150,
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
                          color: Color(0xff265AE1)),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              width: 300,
              height: 290,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        )
      ],
    );
  }
}
