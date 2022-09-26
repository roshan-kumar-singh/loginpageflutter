import 'package:flutter/material.dart';
import 'registration_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState()=>InitState();
}
class InitState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children:[
            Container(
                height:300,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(90)),
                    color: Color(0xffF5591F),
                    gradient: LinearGradient(
                        colors:[(Color(0xffF5591F)),(Color(0xffF2861E))],
                        begin:Alignment.topCenter,
                        end:Alignment.bottomCenter
                    )
                ),
                child:Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 90,
                        width: 90,
                        child:Image.asset('images/app_logo.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20,top: 20),
                        alignment: Alignment.bottomRight,
                        child:const Text(
                          "Login",
                          style:TextStyle(
                            fontSize: 20,
                            color:Colors.white,
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
                child:const TextField(
                    cursorColor:Color(0xffF5591F),
                    decoration:InputDecoration(
                      icon:Icon(
                        Icons.email_outlined,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Enter Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    )
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
                child:const TextField(
                    obscureText: true,
                    cursorColor:Color(0xffF5591F),
                    decoration:InputDecoration(
                      icon:Icon(
                        Icons.password_outlined,
                        color:Color(0xffF5591F),
                      ),
                      hintText:"Enter Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    )
                )
            ),
            Container(
              margin:const EdgeInsets.only(top:20,right:20),
              alignment:Alignment.centerRight,
              child:GestureDetector(
                child:const Text("Forget Password?"),
                onTap: ()=>{

                },
              ),
            ),
            GestureDetector(
                onTap:()=>{

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
                          color:Color(0xffEEEEEE)
                      )],
                    ),
                    child:const Text(
                        "Login",
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
                      const Text("Don't Have Account? "),
                      GestureDetector(
                          onTap:()=>{
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const RegistrationScreen()
                            ))
                          },
                          child:const Text(
                            "Register Now",
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
    );
  }
}