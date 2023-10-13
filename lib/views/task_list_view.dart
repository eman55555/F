import 'package:day_8/view_models/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      
      return Container(
        padding: EdgeInsets.only(top: 20 , right: 5 ,left: 5),
       decoration: BoxDecoration(
        color: viewModel.color2,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: ListView.separated(
          itemBuilder:  (context, index) =>  
           Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  HapticFeedback.mediumImpact();
                  viewModel.deleteTask(index);
                },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Icon(Icons.delete, )),
                ),
            child: Container(
          
              decoration: BoxDecoration(
                        color: Color.fromARGB(255, 108, 106, 106),
                        borderRadius: BorderRadius.circular(20)),
              child: ListTile(
               leading: Checkbox(
                value: viewModel.getTaskStatus(index),
                onChanged: (value) {
                  viewModel.setTaskStatus(index, value!);
                },
                checkColor: viewModel.color1,
                activeColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: viewModel.color3, width: 2),
                  
                ),
               ),
               title: Text(viewModel.getTaskTitle(index) ,
               style: TextStyle(color: Colors.white),
               ),
              ),
            ),
          )
        , separatorBuilder: (context, index) => SizedBox(
          height: 15,
        ), itemCount: viewModel.taskCount),
      );
    },);
  }
}