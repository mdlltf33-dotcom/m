import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calclolution/login_page.dart';
import 'package:calclolution/singup_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center( child: Lottie.asset('aset/Calculate.json')),
       nextScreen: singup(),
       
       splashIconSize: 400,
       backgroundColor: Colors.white,
      duration: 5000,

       );
  
   

  }
}