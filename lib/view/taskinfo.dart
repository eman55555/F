

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../view_models/app_view_model.dart';


class TaskInfoView extends StatelessWidget {
  const TaskInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Consumer<AppViewModel>(builder: (context , viewModel , child){
        return  Row(

          children: [
            Expanded(child: Card(
              child: Column(
                children: [
                  Text("Total Task"),
                  Text(" number is  ${viewModel.numberoftasks}"),//opration
                ],
              ),

            )),
            Expanded(child: Card(
              child: Column(
                children: [
                  Text("Remaining Task"),
                  Text(" number is  ${viewModel.remaintasks}" ),
                ],
              ),

            )),

          ],
        ) ;
      })
      ;
  }
}
