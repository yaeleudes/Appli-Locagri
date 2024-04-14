import 'package:flutter/material.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/Lesson.dart';
import 'package:formation_locagri/pages/chapitre.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonsList extends StatefulWidget {
  Chapter chapter;
  LessonsList(this.chapter, {super.key});

  @override
  State<LessonsList> createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  int _score = 0;
  final box = GetStorage();
  // late User user;

  @override
  void initState() {
    super.initState();
    _score = box.read("score") ?? 0;
    GetStorage().listenKey("score", (value) {
      setState(() {
        _score = value;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    List<Lesson> filteredLessons = lessons.where((lesson) => lesson.idChapter == widget.chapter.id).toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          widget.chapter.labelle,
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
            "$_score",
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
              itemCount: filteredLessons.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 4,
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Chapitre(widget.chapter.labelle, filteredLessons[index]))
                      );
                    },
                    title: Text(
                      filteredLessons[index].title,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // subtitle: Text(
                    //   filteredLessons[index].description,
                    //   style: GoogleFonts.poppins(
                    //     fontSize: 12,
                    //   ),
                    // ),
                  ),
                );
              },
            ),
      ),
    );
  }
}
