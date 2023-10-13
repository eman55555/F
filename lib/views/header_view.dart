import 'package:day_8/view_models/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './bottom_sheets/delete_bottom_sheet.dart';
import './bottom_sheets//settings_bottom_sheet.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      
      builder: (context, viewModel, child) {
        return Container(
            color: const Color.fromARGB(255, 108, 106, 106),
          child: Row(
            
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                  
                    margin: EdgeInsets.only(left: 15),
                    child: Column(children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text("Welcome back,",
                                style: TextStyle(
                                    fontSize: 23,
                                    
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(viewModel.username,
                                style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      )
                    ]),
                  )),
              // Trash Icon
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        viewModel.buildBottomSheet(
                          context,  DeleteBottomSheet());
                      },
                      child: Icon(Icons.delete,
                          color:Colors.white, size: 40))),
              // Settings Icon
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        viewModel.buildBottomSheet(
                           context,  SettingsBottomSheet());
                      },
                      child: Icon(Icons.settings,
                          color: Colors.white, size: 40))),
            ],
          ),
        );
      },
    );
  }
}