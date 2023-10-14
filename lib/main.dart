import 'package:day_8/view_models/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/task_view.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=> AppViewModel() , child:  const MyApp(), )
     );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskPage() ,
    );
  }
}
// to change launcher icon :

// 1- flutter pub run flutter_launcher_icons
//2-Create a folder called asset in the root directory
//3- Add flutter_icons inside the pubspec.yaml 
//4- flutter pub get