import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chapitre extends StatefulWidget {
  const Chapitre({super.key});

  @override
  State<Chapitre> createState() => _ChapitreState();
}

class _ChapitreState extends State<Chapitre> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
          "Chapitre 1",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          child: Column(
            children: [
              Text(
                "Définition du  changement climatique",
                style: GoogleFonts.poppins(
                  // color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: size.height*0.018,),
              const Image(image: AssetImage("assets/images/image0.png"))
              
            ]
          ),
        ),
      ),
    );
  }
}