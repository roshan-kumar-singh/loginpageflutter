import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'dart:async';
import 'package:intl/intl.dart';
class RegistrationScreen extends StatefulWidget {

  const RegistrationScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegistrationScreen> {

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1200, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  void _showImageDialog(){
    showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
              title:const Text("Please choose an option"),
              content:Row(
                mainAxisSize:MainAxisSize.min,
                children:[
                  InkWell(
                      onTap: (){
                        _getFromCamera();
                      },
                      child:Row(
                          children:const [
                            Padding(
                                padding:EdgeInsets.all(4.0),
                                child:Icon(
                                  Icons.camera,
                                  color: Colors.orange,
                                )
                            ),
                            Text(
                              "Camera",
                              style:TextStyle(color:Colors.orange),
                            ),
                          ]
                      )
                  ),
                  InkWell(
                      onTap: (){
                        _getFromGallery();
                      },
                      child:Row(
                          children:const [
                            Padding(
                                padding:EdgeInsets.all(4.0),
                                child:Icon(
                                  Icons.image,
                                  color: Colors.orange,
                                )
                            ),
                            Text(
                              "Gallery",
                              style:TextStyle(color:Colors.orange),
                            ),
                          ]
                      )
                  )
                ],
              )
          ) ;
        }
    );
  }

  void _getFromCamera() async
  {
    XFile? pickedFile = await ImagePicker().pickImage(source:ImageSource.camera,preferredCameraDevice: CameraDevice.front);
    Navigator.pop(context);
  }
  void _getFromGallery() async
  {
    XFile? pickedFile = await ImagePicker().pickImage(source:ImageSource.gallery);
    Navigator.pop(context);
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Form(
        key: _formKey,
     child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                decoration: const BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: Color(0xffF5591F),
                    gradient: LinearGradient(
                        colors:[(Color(0xffF5591F)),(Color(0xffF2861E))],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 90,
                        width: 90,
                        child: Image.asset('images/app_logo.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.bottomRight,
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
                margin:const EdgeInsets.only(left:20,right:20,top:70),
                padding:const EdgeInsets.only(left:20,right:20),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.grey[200],
                  boxShadow:const [BoxShadow(
                      offset:Offset(0,10),
                      blurRadius:50,
                      color:Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child:TextFormField(
                    cursorColor:const Color(0xffF5591F),
                    decoration:const InputDecoration(
                      icon:Icon(
                        Icons.person,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Enter Full Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator:(value){
                      if(value!.isEmpty){
                        return "Enter the correct Name !";
                      }

                    }
                )
            ),
            Container(
                margin:const EdgeInsets.only(left:20,right:20,top:20),
                padding:const EdgeInsets.only(left:20,right:20),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.grey[200],
                  boxShadow:const [BoxShadow(
                      offset:Offset(0,10),
                      blurRadius:50,
                      color:Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child:TextFormField(
                    cursorColor:const Color(0xffF5591F),
                    decoration:const InputDecoration(
                      icon:Icon(
                        Icons.email,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Enter Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator:(value){
                      if(value!.isEmpty){
                        return "Enter the correct Email !";
                      }

                    }
                )
            ),
            Container(
                margin:const EdgeInsets.only(left:20,right:20,top:20),
                padding:const EdgeInsets.only(left:20,right:20),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.grey[200],
                  boxShadow:const [BoxShadow(
                      offset:Offset(0,10),
                      blurRadius:50,
                      color:Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child:TextFormField(
                    cursorColor:const Color(0xffF5591F),
                    decoration:const InputDecoration(
                      icon:Icon(
                        Icons.phone,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Phone Number",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator:(value){
                      if(value!.isEmpty){
                        return "Enter the correct Number !";
                      }

                    }
                )
            ),

            Container(
                margin:const EdgeInsets.only(left:20,right:20,top:20),
                padding:const EdgeInsets.only(left:20,right:20),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.grey[200],
                  boxShadow:const [BoxShadow(
                      offset:Offset(0,10),
                      blurRadius:50,
                      color:Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.center,
                child:TextFormField(
                    obscureText: true,
                    cursorColor:const Color(0xffF5591F),
                    decoration:const InputDecoration(
                      icon:Icon(
                        Icons.vpn_key,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Enter Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator:(value){
                      if(value!.isEmpty){
                        return "Enter the correct Password !";
                      }

                    }
                )
            ),
            Container(
                margin:const EdgeInsets.only(left:20,right:20,top:20),
                padding:const EdgeInsets.only(left:20,right:20),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.grey[200],
                  boxShadow:const [BoxShadow(
                      offset:Offset(0,10),
                      blurRadius:50,
                      color:Color(0xffEEEEEE)
                  )],
                ),
                alignment: Alignment.topLeft,
                child:Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    Text("${selectedDate.toLocal()}".split(' ')[0]),

                    SizedBox(height: 20.0,
                    ),
                    ElevatedButton(

                      child: Text('Select date'),
                      onPressed: () => _selectDate(context),

                    ),
                  ],
                ),
            ),
            Container(
              margin:const EdgeInsets.only(left:20,right:20,top:20),
              padding:const EdgeInsets.only(left:20,right:20),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:Colors.grey[200],
                boxShadow:const [BoxShadow(
                    offset:Offset(0,10),
                    blurRadius:50,
                    color:Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child:ElevatedButton(
                onPressed:()=>{
                  _showImageDialog(),
                }, child: Row(
                children:const [
                  Icon(Icons.image_outlined),
                  SizedBox(
                    width:20,

                  ),
                  Text('Pick an Image')
                ],
              ),
              ),

            ),

//-----------------------------------------------------------------------------

 //-----------------------------------------------------------------------
            GestureDetector(
                onTap:(){
                if(_formKey.currentState!.validate()){
                  return;
                }
                else{
                  print("Not validate");
                }
                },
                child:Container(
                    margin:const EdgeInsets.only(left:20,right:20,top:60),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left:20,right:20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors:[(Color(0xffF5591F)),(Color(0xffF2861E))],
                        begin:Alignment.centerLeft,
                        end:Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow:const [BoxShadow(
                          offset:Offset(0,10),
                          blurRadius:50,
                          color:Color(0xffF5591F)
                      )],
                    ),
                    child:const Text(
                        "Register",
                        style:TextStyle(
                            color:Colors.white
                        )
                    )
                )
            ),


            Container(
                margin:const EdgeInsets.only(top:10),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const Text("Already Login? "),
                      GestureDetector(
                          onTap:()=>{
                            Navigator.pop(context)
                          },
                          child:const Text(
                            "Login Now",
                            style:TextStyle(
                                color:Color(0xffF5591f)
                            ),
                          )
                      )
                    ]
                )
            )

          ],
        ),
      ),
      ),
    );
  }
}



