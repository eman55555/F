import 'package:day_8/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginScreen(),
    //debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      // change the focus border color of the TextField
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.purple[700],
            // background: const Color.fromARGB(115, 189, 23, 23),
          ),
      // change the focus border color when the errorText is set
    ),
  ));
}
