import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 226, 230),
      body: Center(
        child: Text(
          'You did it!',
          style: TextStyle(fontSize: 20),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
