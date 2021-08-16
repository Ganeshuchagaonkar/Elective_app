import 'package:custom_paints/Components/LoginScreens/FacultyComponents/Add_elective.dart';
import 'package:flutter/material.dart';

 class Faculty_Dashboard extends StatefulWidget {
   const Faculty_Dashboard({ Key key }) : super(key: key);
 
   @override
   _Faculty_DashboardState createState() => _Faculty_DashboardState();
 }
 
 class _Faculty_DashboardState extends State<Faculty_Dashboard> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Add Elective",style: TextStyle(color: Colors.black),),
       backgroundColor: Color(0xffF5C43E),
       centerTitle: true,),
       body: Elective_View(),
       
     );
   }
 }

 class Elective_View extends StatefulWidget {
   const Elective_View({ Key key }) : super(key: key);
 
   @override
   _Elective_ViewState createState() => _Elective_ViewState();
 }
 
 class _Elective_ViewState extends State<Elective_View> {

  
   List subjects =["SMS","Java","SSC","Python","Data Structure"];
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: subjects.length,
       itemBuilder: (context,index){
         return SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 padding: const EdgeInsets.only(right: 10,left: 14),
                 width: MediaQuery.of(context).size.width,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    //  SizedBox(width: 1,),
                     Text(subjects[index],style: TextStyle(fontWeight: FontWeight.bold),),
                       
                    Container(
                      child: Row(
                        children: [
                           FlatButton(
                             color: Color(0xff265AE1),
                             onPressed: (){
                               Navigator.pushNamed(context, '/faculty/add_elective');
                              }, child: Text("Add",style: TextStyle(color: Colors.white),)),
                             SizedBox(width: 10,),
                      FlatButton(
                       color: Color(0xff265AE1),
                         onPressed: (){
                         
                         }, child: Text("Update",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    )
                   ],
                 )
               ),
               Divider(thickness:1,color: Colors.grey,),
             ],
           ),
         );
       } );   
   }
 }


 class Add extends StatelessWidget {
   const Add({ Key key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 400,
       height: 500,
       
     );
   }
 }

