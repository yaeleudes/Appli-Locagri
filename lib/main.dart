import 'package:flutter/material.dart';
import 'package:formation_locagri/pages/splash.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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