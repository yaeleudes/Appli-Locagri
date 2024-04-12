import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:formation_locagri/controllers/dao.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/User.dart';
import 'package:formation_locagri/pages/splash.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 5), () {
    FlutterNativeSplash.remove();
  });

  User user = User(id: 1, score: 0);
  await Dao.addUser(user);
  await Dao.addChapters(chapters);

  await GetStorage.init();

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