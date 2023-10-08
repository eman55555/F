import 'package:day_8/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomeScreen(title: 'SHRINE'),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
  ));
}
// to change launcher icon :

// 1- flutter pub run flutter_launcher_icons
//2-Create a folder called asset in the root directory
//3- Add flutter_icons inside the pubspec.yaml 
//4- flutter pub get