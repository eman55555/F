

import 'package:flutter/material.dart';

import 'AddTask.dart';
import 'header_view.dart';
import 'task_list_view.dart';
import 'taskinfo.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
        
              Expanded(flex: 1,
                  child: HeaderView()),
              Expanded(flex: 1,
                  child: TaskInfoView()),
              Expanded(flex: 7,
                  child:TaskListView()),
        
        
            ],
          ),
        ),
      ),
      floatingActionButton: AddTask(),  //create widget
    );
  }
}
