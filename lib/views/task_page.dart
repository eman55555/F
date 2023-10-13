import 'package:day_8/views/add_task_view.dart';
import 'package:day_8/views/task_list_view.dart';
import 'package:flutter/material.dart';

import 'header_view.dart';
import 'task_info_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
 
      backgroundColor: Colors.grey,
      body: SafeArea(
        bottom: false,
          child: Column(
        children: [
          // Header View
              Expanded(flex: 1, child: HeaderView()),

              // Task Info View
              Expanded(flex: 2, child: TaskInfoView()),

              // Task List View
              Expanded(flex: 7, child: TaskListView()),
        ],
      )),
      floatingActionButton: AddTaskView()
    );
  }
}
