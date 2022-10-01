import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


import 'login_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
        splash: Stack(
          children: [
            Center(
                child:Container(
                  child:Image.asset('images/app_logo.png'),
                )
            )
          ],
        ),
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: const Color(0xffF5591F),
        duration: 300,
      ),
    );
  }
}

