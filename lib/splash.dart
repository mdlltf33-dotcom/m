import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calclolution/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center( child: Lottie.asset('aset/Calculate.json')),
       nextScreen: MyHomePage(title: "Hello"),
       
       splashIconSize: 300,
       backgroundColor: const Color.fromRGBO(255, 255, 255, 0.102),
      duration: 5000,

       );
  
   

  }
}