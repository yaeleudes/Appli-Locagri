import 'dart:async';
import 'package:flutter/material.dart';
import '../animation.dart';
import 'accueil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Accueil()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimationDelay(
            delay: 1500, 
            child: SizedBox(
              height: size.height*0.14,
              width: size.width*0.7,
              child: Image.asset("assets/images/logo.jpg"),
            ),    
        ),
      ),
    );
  }
}

// Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   children: [

        //     SizedBox(height: size.height*0.010,),
        //     // AnimationDelay(
        //     //   delay: 2500, 
        //     //   child: Container(
        //     //     alignment: Alignment.center,
        //     //     child: Text(
        //     //       "Green solutions for Africa",
        //     //       style: GoogleFonts.poppins(
        //     //         color: Colors.green,
        //     //         fontSize: size.height*0.024,
        //     //       ),
        //     //       textAlign: TextAlign.center,
        //     //     ),
        //     //   )
        //     // )
        //   ],
        // ),