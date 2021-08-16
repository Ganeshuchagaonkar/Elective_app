import 'package:flutter/material.dart';

class Elective_Report extends StatefulWidget {
  const Elective_Report({Key key}) : super(key: key);

  @override
  _Elective_ReportState createState() => _Elective_ReportState();
}

class _Elective_ReportState extends State<Elective_Report> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffFFFFFF),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xffF5C43E),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        iconSize: 35,
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      "Elective Report",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      iconSize: 35,
                      onPressed: () {
                        Navigator.pushNamed(context, '/student/futureScope');
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 143, 20, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8FF),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.3),
                          offset: Offset(2, 5),
                          blurRadius: 8.0,
                          spreadRadius: 0.5)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 155,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffC570ED),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              "PDF",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 155,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffC570ED),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "video",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 230, 20, 0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8FF),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.3),
                            offset: Offset(2, 5),
                            blurRadius: 8.0,
                            spreadRadius: 0.5)
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 330, 20, 0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8FF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.3),
                          offset: Offset(2, 5),
                          blurRadius: 8.0,
                          spreadRadius: 2)
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 660, 20, 0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8FF),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.3),
                            offset: Offset(2, 5),
                            blurRadius: 8.0,
                            spreadRadius: 0.5)
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
