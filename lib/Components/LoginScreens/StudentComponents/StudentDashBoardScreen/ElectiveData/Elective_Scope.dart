import 'package:flutter/material.dart';

class Elective_Scope extends StatefulWidget {
  // const Elective_Scope({ Key key }) : super(key: key);

  @override
  _Elective_ScopeState createState() => _Elective_ScopeState();
}

class _Elective_ScopeState extends State<Elective_Scope> {
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
                height: 160,
                decoration: BoxDecoration(
                  color: Color(0xffF5C43E),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        iconSize: 35,
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    SizedBox(
                      width: 78,
                    ),
                    Text(
                      "Search By",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 120, 20, 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      shadowColor: Colors.grey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      borderOnForeground: true,
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text(
                          "Rating",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.red,
                          size: 35,
                        ),
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total Rating",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Card(
                      shadowColor: Colors.grey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      borderOnForeground: true,
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text(
                          "Future Scope",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.search_rounded,
                          color: Colors.blue,
                          size: 35,
                        ),
                        children: [],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Card(
                      shadowColor: Colors.grey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      borderOnForeground: true,
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text(
                          "Job Opportunity",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                          size: 35,
                        ),
                        children: [],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Card(
                      shadowColor: Colors.grey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      borderOnForeground: true,
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text(
                          "Prediction of marks",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.library_books,
                          color: Colors.red,
                          size: 35,
                        ),
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Predicted Score",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "75.03%",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
