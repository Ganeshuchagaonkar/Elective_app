
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
          ),
          child: Center(
            child: Text(
              "Student Dashboard",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),

       
        Padding(padding: const EdgeInsets.only(top: 110),
        child: Dashbordview(),
        
        ),
        
      ],
    );
  }
}

class Dashbordview extends StatefulWidget {
  const Dashbordview({ Key key }) : super(key: key);

  @override
  _DashbordviewState createState() => _DashbordviewState();
}

class _DashbordviewState extends State<Dashbordview> {
  List Title=[1,2,3,4,5,6,7,8];
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: Title.length,
      itemBuilder: (context,index) {
        return
       
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                         decoration: BoxDecoration(
                           color: Color(0xffF8F8FF),
                           borderRadius: BorderRadius.circular(5),
                          boxShadow: <BoxShadow>[
                              BoxShadow(
                                  // color: Colors.orange.shade200,
                                  color: Colors.black12.withOpacity(0.3),
                                  offset: Offset(2, 5),
                                  blurRadius: 8.0,
                                  spreadRadius: 2)
                            ]
                        ),
                      
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                           color: Color(0xffF8F8FF),
                           borderRadius: BorderRadius.circular(5),
                          boxShadow: <BoxShadow>[
                              BoxShadow(
                                  // color: Colors.orange.shade200,
                                  color: Colors.black12.withOpacity(0.3),
                                  offset: Offset(2, 5),
                                  blurRadius: 8.0,
                                  spreadRadius: 2)
                            ]
                        ),
                       
                      )
                    ],
          // ),
        ),
        SizedBox(height: 40,)
                  ],
                ),
              );
        
          //  );

    }
    
    );
  }
}
