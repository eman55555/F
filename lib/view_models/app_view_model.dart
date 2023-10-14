
import 'package:day_8/models/user_model.dart';
import 'package:flutter/material.dart';

import '../models/task_model.dart';


class AppViewModel extends ChangeNotifier {

  List<Task>  tasks = <Task>[];

  User user = User('Eman Hamad ');

  // Model connected with view Model

//method to add task

void addTask ( Task newTask ){
  tasks.add(newTask);
  //step
  notifyListeners();
}


void setTaskvalu(int taskindex , bool taskvalu){

  tasks[taskindex].complete = taskvalu;
  notifyListeners();
}

  //  int numbeoftasks(){return tasks.length;}
  int get numberoftasks => tasks.length;


  String get username => user.username;


  int get remaintasks => tasks.where((tasks) => !tasks.complete).length;

  // int remian(){
  //
//  add condtion

  // return !tasks.completed).length;
  // }


String getTaskTile(int taskindex){

  return tasks[taskindex].title;
}

  bool getTaskCpml(int taskindex){

    return tasks[taskindex].complete;
  }


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



  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: ((context) {
        return bottomSheetView;
      }),);
  }
}


