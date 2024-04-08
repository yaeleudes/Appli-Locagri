import 'package:flutter/material.dart';
import 'package:formation_locagri/animation.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/User.dart';
import 'package:formation_locagri/pages/lessons_list.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chapitre.dart';

class Cours extends StatefulWidget {
  const Cours({super.key});

  @override
  State<Cours> createState() => _CoursState();
}
class _CoursState extends State<Cours> {
  List<int> lessons = [4, 2, 5, 6];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)
        ),
        actions: [
          Center(child: Text(
            "0",
            style: GoogleFonts.poppins(
              color: Colors.white,
              // fontSize: size.width*0.044
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 2.0, right: 4.0),
            child: Icon(Icons.favorite,color: Colors.red,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.only(top: 2, left: 15, right: 15, bottom: 0),
              width: size.width,
              height: size.height/2.5,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimationDelay(
                    delay: 500,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        "Salut, Cher Agriculteur",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  AnimationDelay(
                      delay: 1000,
                      child: SizedBox(
                        width: size.width,
                        child: Image(
                          image: AssetImage("assets/images/taking.png"),
                          height: size.height / 3,
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                        ),
                      )
                  )
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            child: Column(
              children: [
                AnimationDelay(
                    delay: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Les différents chapitres",
                          style: GoogleFonts.poppins(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                ),
                const SizedBox(height: 10,),
                AnimationDelay(
                    delay: 1000,
                    child: GridView.builder(
                      itemCount: chapters.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (size.height - 50 - 25) / (4 * 240),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LessonsList(chapters[index].labelle))
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green[100]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chapters[index].labelle,
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  chapters[index].title,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.5)
                                  ),
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
