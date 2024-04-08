import 'package:flutter/material.dart';
import 'package:formation_locagri/models/Lesson.dart';
import 'package:formation_locagri/pages/chapitre.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonsList extends StatefulWidget {
  String chapterLabelle;
  LessonsList(this.chapterLabelle, {super.key});

  @override
  State<LessonsList> createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          widget.chapterLabelle,
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: lessons.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 4,
              child: ListTile(
                onTap: (){
                  print(lessons[index].title);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chapitre(widget.chapterLabelle, lessons[index]))
                  );
                },
                title: Text(
                  lessons[index].title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  lessons[index].description,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
