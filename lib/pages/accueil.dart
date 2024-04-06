//Page pour l'Accueil
import 'package:flutter/material.dart';
import 'package:formation_locagri/pages/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

import '../animation.dart';
import 'cours.dart';
// import 'package:flutter/services.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height/1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height/1.6,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimationDelay(
                          delay: 1000, 
                          child: SizedBox(
                            height: size.height*0.14,
                            width: size.width*0.7,
                            child: Image.asset("assets/images/logo.jpg"),
                          ),
                        ),
                        AnimationDelay(
                          delay: 1500,
                          child: Text(
                            "Green Solutions For Africa",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25
                            ),
                            textAlign: TextAlign.center,
                          )
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height / 2.666,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height / 2.666,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                ),
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimationDelay(
                        delay: 1500, 
                        child: Text(
                          "Formation sur l'argroforesterie en cacaoculture",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            // letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ),
                      SizedBox(height: size.height*0.070),
                      AnimationDelay(
                        delay: 2000,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: size.height*0.05,
                                //width: size.width*0.63,
                                child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,

                                  //side: const BorderSide(color: Colors.green, width: 1.0),
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => const Cours())
                                  );
                                }, 
                                icon: const Icon(Icons.book, color: Colors.white,),
                                label: Text(
                                  "Apprendre",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  ),
                                )
                              ),
                              )
                            ),
                            Material(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: size.height*0.05,
                                //width: size.width*0.63,
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    //side: const BorderSide(color: Colors.green, width: 1.0)
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => const Quiz())
                                    );
                                  }, 
                                  icon: const Icon(Icons.quiz, color: Colors.white,),
                                  label: Text(
                                    "Quiz",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      letterSpacing: 1,
                                    ),
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         elevation: 10,
//         leading: IconButton(
//           onPressed: (){SystemNavigator.pop();}, 
//           icon: const Icon(Icons.close, color: Colors.white,)
//         ),
//         title: Text(
//           "Accueil",
//           style: GoogleFonts.poppins(
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           Center(child: Text(
//             "0",
//             style: GoogleFonts.poppins(
//               color: Colors.white,
//               // fontSize: size.width*0.044
//             ),
//           )),
//           const Padding(
//             padding: EdgeInsets.only(left: 2.0, right: 4.0),
//             child: Icon(
//               Icons.favorite,
//               color: Colors.red,
//             ),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/images/taking.png", height: size.height*0.4),
//             // SizedBox(
//             //   height: size.height*0.14,
//             //   width: size.width*0.7,
//             //   child: Image.asset("assets/images/taking.png", height: size.height*0.4),
//             // ),
//             SizedBox(height: size.height*0.012),
              // SizedBox(
              //             height: size.height*0.06,
              //             width: size.width*0.76,
              //             child: ElevatedButton.icon(
              //               style: ElevatedButton.styleFrom(
              //                 backgroundColor: Colors.green,
              //                 side: const BorderSide(color: Colors.green, width: 1.0),
              //               ),
              //               onPressed: (){
              //                 Navigator.push(
              //                   context, 
              //                   MaterialPageRoute(builder: (context) => const Cours())
              //                 );
              //               }, 
              //               icon: const Icon(Icons.book), 
              //               label: Text(
              //                 "Apprendre",
              //                 style: GoogleFonts.poppins(
              //                   color: Colors.white
              //                 ),
              //               )
              //             ),
              //           ),
              //         ),
            
            
//           ],
//         ),
//       ),
//     );