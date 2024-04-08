import 'package:flutter/material.dart';
import 'package:formation_locagri/models/Lesson.dart';
import 'package:google_fonts/google_fonts.dart';

class Chapitre extends StatefulWidget {
  Lesson lesson;
  String chapter;
  Chapitre(this.chapter, this.lesson, {super.key});

  @override
  State<Chapitre> createState() => _ChapitreState();
}

class _ChapitreState extends State<Chapitre> {
  
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
        title: Text(
          widget.chapter,
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
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
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2, bottom: 10, top: 0),
        child: ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      widget.lesson.title,
                      style: GoogleFonts.poppins(
                        // color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Image.asset(widget.lesson.thumbnail),
                  const SizedBox(height: 10,),

                  const SizedBox(height: 10,),
                  Card(
                    elevation: 4,
                    color: Colors.orange[500],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                      child: RichText(
                          //textAlign: TextAlign.justify,
                          text: TextSpan(
                              style: GoogleFonts.poppins(fontSize: 16.5,),
                              children: [
                                TextSpan(
                                    text: "Message clé : ",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                    )
                                ),
                                TextSpan(
                                  text: widget.lesson.keyMessage,
                                  style: TextStyle(
                                    wordSpacing: 2,
                                  )
                                )
                              ]
                          )
                      ),
                    )
                  )
                ]
            ),
          ],
        ),
      )
    );
  }
}
