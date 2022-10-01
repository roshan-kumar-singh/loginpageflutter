import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState()=>InitState();
}

class InitState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async {
    var duration = const Duration(seconds:3);
    return Timer(duration,loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
        body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xffF5591F),
                    gradient:LinearGradient(
                      colors:[(Color(0xffF5591F)),(Color(0xffF2861E))],
                      begin:Alignment.topCenter,
                      end:Alignment.bottomCenter,
                    )
                )
            ),
            Center(
                child:Container(
                  child:Image.asset('images/app_logo.png'),
                )
            )
          ],
        )
    );
  }
}