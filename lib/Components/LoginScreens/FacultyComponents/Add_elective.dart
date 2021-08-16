// import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';
class Add_elective extends StatefulWidget {
  const Add_elective({ Key key }) : super(key: key);

  @override
  _Add_electiveState createState() => _Add_electiveState();
}

class _Add_electiveState extends State<Add_elective> {

  File _image;
  File _imagepath;
  File _video;
  File _videopath;

  var picker = ImagePicker();

  Future getImage() async {
    var  pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _imagepath = File(_image.path);
      } else {
        print('No file selected.');
      }
    });
  }

   Future <String>  getVideo() async {
    var pickedFile = await picker.pickVideo(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _video = File(pickedFile.path);
       
        _videopath = File(_video.path);
      } else {
        print('No video selected.');
      }
    });
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Elective",style: TextStyle(color: Colors.black),),
      backgroundColor: Color(0xffF5C43E),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 20,right: 10),
                         child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                            keyboardType: TextInputType.text,
                            
                            decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Elective Name',
                                fillColor: Color(0xffF2F1F1),
                            ),
                          ),
                              ),
                              SizedBox(width: 10,),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              
                              decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Subject code',
                                fillColor: Color(0xffF2F1F1),
                              ),
                            ),
                          ),
                          
                            ],
                          ),
                       ),
                       SizedBox(height: 20,),
                       Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                     child:  TextFormField(
                              keyboardType: TextInputType.text,
                              
                              decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Intake for elective',
                                fillColor: Color(0xffF2F1F1),
                              ),
                            ),),

                             SizedBox(height: 20,),
                            Padding(padding:const EdgeInsets.only(left: 10,right: 10),
                          child:    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          color: Color(0xff265AE1),
                          onPressed: getVideo,
                          child: Text(
                            'Upload Video',
                            style: TextStyle(
                                color: Colors.white,
                                ),
                          ),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                            child: _video == null
                                ? Text('No video selected.')
                                : Text('$_videopath'))
                    
                      ]),
                             ),
                              SizedBox(height: 20,),
                             Padding(
                               padding: const EdgeInsets.only(left:10,right: 10),
                               child: Row(                                            
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          color: Color(0xff265AE1
),
                          onPressed: getImage,
                          child: Text(
                            'Upload Image',
                            style: TextStyle(
                                  color: Colors.white,
                                  // backgroundColor: Colors.purple[900]
                                  ),
                          ),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                            child: _image == null
                                  ? Text('No image selected.')
                                  : Text('$_imagepath'))
                    
                        
                      ]),
                             ),
                    
                  SizedBox(height: 20,),
                    Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                     child:  TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                            
                              
                              decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Future Scope',
                                fillColor: Color(0xffF2F1F1),
                              ),
                            ),),
                            SizedBox(height: 20,),
                            Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                     child:  TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                            
                              
                              decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Job Opportunities',
                                fillColor: Color(0xffF2F1F1),
                              ),
                            ),),
                            SizedBox(height: 20,),
                            Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                     child:  TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                            
                              
                              decoration: new InputDecoration(
                                // contentPadding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  // borderRadius: BorderRadius.circular(50)
                                ),
                                hintText: 'Prerequisite',
                                fillColor: Color(0xffF2F1F1),
                              ),
                            ),),
                            SizedBox(height: 20,),
                            GestureDetector(
                    onTap: () => {
                     print("request to server")
                    },
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: Offset(2, 4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                        color: Color(0xff265AE1),),
                      child: Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
      
    );
  }
}