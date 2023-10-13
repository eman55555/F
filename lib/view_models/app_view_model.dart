import 'package:day_8/models/task_model.dart';
import 'package:day_8/models/user_model.dart';
import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Eman");

  int get taskCount => tasks.length;
  int get numTasksRemaining => tasks.where((task) => !task.complete).length;
  
  String get username => user.username;


  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }
    void updateUsername(String newUsername) {
    user.username = newUsername;
    notifyListeners();
  }

  void deleteAllTasks() {
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTasks() {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }
  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

   String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  //  void setTaskTitle(int taskIndex , String title) {
  //   tasks[taskIndex].title = title;
  //   notifyListeners();
  // }

  void buildBottomSheet(BuildContext context, Widget bottomSheet) {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          return bottomSheet;
        }),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)));
  }

  bool getTaskStatus(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  void setTaskStatus(int taskIndex, bool status) {
    tasks[taskIndex].complete = status;
    notifyListeners();
  }

  Color color1 = const Color.fromARGB(255, 21, 12, 12);
  Color color2 = const Color.fromARGB(255, 152, 79, 79);
  Color color3 = Colors.grey.shade800;
  Color color4 = Colors.grey.shade900;
}
