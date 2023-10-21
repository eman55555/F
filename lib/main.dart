import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

// import 'package:http/http.dart' as http;



import 'generated/l10n.dart';
import 'view/add_task.dart';
import 'view/header.dart';
import 'view/list_view.dart';
import 'view/task_info.dart';
import 'view_model/view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>  ViewModel(),child: const MyApp(), )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
       S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:  
      S.delegate.supportedLocales,


      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      const SafeArea(
        child: Column(

          children: [

            Expanded(
                flex: 1,
                child: Header()),
            Expanded(
                flex: 1,
                child:TaskInfo() ),
            Expanded(
                flex: 5,
                child: Listview() ),
          ],
        ),
      ),
      floatingActionButton: AddTask() ,
    );
  }
}
