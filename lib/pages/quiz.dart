import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> chapitres = ["Chapt1", "Chapt2", "Chapt3", "Chapt4"];
  List<String> descriptions = ["desc1", "desc2", "desc3", "desc4"];
  List<int> lessons = [4, 2, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)
        ),
        title: Text(
          "Tous les quiz",
          style: GoogleFonts.poppins(
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
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ListView.builder(
          itemCount: chapitres.length,
          itemBuilder: ((context, index) {
          return Card(
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text((index + 1).toString()),
                ),
                title: Text(
                  chapitres[index],
                  style: GoogleFonts.poppins(
                    color: Colors.black
                  ),
                ),
                subtitle: Text(
                  descriptions[index],
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
                trailing: Text(lessons[index].toString()),
                onTap: (){},
              ),
            );
        })),
      ),
    );
  }
}