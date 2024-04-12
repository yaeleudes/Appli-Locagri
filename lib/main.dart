import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:formation_locagri/controllers/chaptersController.dart';
import 'package:formation_locagri/controllers/userController.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/pages/splash.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 5), () {
    FlutterNativeSplash.remove();
  });

  
  UserController userController = UserController();
  ChapterController chapterController = ChapterController();
  // final Future <Database> dataBase = userController.database();
  
  await userController.ensureUserExists(1);
  await chapterController.addChapters(chapters);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // final Future <Database> dataBase
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locagri-App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const Splash(),
    );
  }
}