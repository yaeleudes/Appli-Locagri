import 'package:flutter/material.dart';
import 'package:formation_locagri/animation.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/Quiz.dart';
import 'package:formation_locagri/pages/quiz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizMenu extends StatefulWidget {
  const QuizMenu({super.key});

  @override
  State<QuizMenu> createState() => _QuizMenuState();
}

class _QuizMenuState extends State<QuizMenu> {
  int _score = 0;
  final box = GetStorage();
  
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
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    GetStorage().listenKey("score", (value) {
      setState(() {
        _score = value;
      });
    });
  }

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
            "$_score",
            style: GoogleFonts.poppins(
              color: Colors.white,
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
              padding: const EdgeInsets.only(top: 2, left: 15, right: 15, bottom: 0),
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
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        "Prêt(e) pour le quiz ?",
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
                          image: const AssetImage("assets/images/quiz.png"),
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
                          "Les quizes par chapitre",
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
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: chapters.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          List<Quiz> filteredQuiz = listQuiz.where((quiz) => quiz.idChapitre == chapters[index].id).toList();
                          return Card(
                            elevation: 4,
                            child: ListTile(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuizView(filteredQuiz, chapters[index].id, chapters[index].labelle))
                                );
                              },
                              title: Text(
                                chapters[index].labelle,
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              subtitle: Text(
                                "${filteredQuiz.length} questions",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)
                                ),
                                textAlign: TextAlign.start,
                              ),
                              trailing: (box.read(chapters[index].labelle) ?? false) ? Icon(Icons.check_circle, color: Colors.green,) : Icon(Icons.check_circle_outline, color: Colors.grey,),
                            ),
                          );
                        },
                      ),
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