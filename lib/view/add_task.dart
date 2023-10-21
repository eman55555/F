


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';
import '../model/task.dart';
import '../view_model/view_model.dart';


class AddTask extends StatelessWidget {
   AddTask({super.key});

  final textuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Consumer<ViewModel>(builder: (context , viewmodel ,child  ){

      return  FloatingActionButton(child: Icon(Icons.add), onPressed: (){


        Navigator.push(context, MaterialPageRoute(builder: (context)=>    AlertDialog(
          title:  Text( S.of(context).title ),
          content:  Text( S.of(context).language ),
          actions: <Widget>[
            TextField(
               controller: textuser ,
              decoration: const InputDecoration(
                  label: Text("username")
              ),
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () {

                Task x = Task(textuser.text, false);
                viewmodel.addtask(x );
                print(textuser.text);
                textuser.clear();
                //    ViewModel viewmode = new ViewModel();
                //    viewmode.adduser(text.text as UsersModel);
                Navigator.of(context).pop();

              },
            ),
          ],
        )  ))
        ;

      },)  ;
    })  ;
  }
}
