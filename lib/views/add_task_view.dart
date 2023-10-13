import 'package:day_8/view_models/app_view_model.dart';
import 'package:day_8/views/bottom_sheets/add_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>( builder: (context, viewModel, child) {
      
   
     return SizedBox(
      height: 60,
       child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 108, 106, 106),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        onPressed: (){
          HapticFeedback.heavyImpact();
          viewModel.buildBottomSheet(context, const AddBottomSheet());
        },
        child: const Icon(Icons.add ,
        size: 30,
        
        ),
        )
     );
         },
    );

  }
}