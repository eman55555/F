import 'package:day_8/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  var password;
  var username;
  var data;
  HomeScreen({this.password, this.username, this.data, super.key});

  //  x = x;  this.x  //ali = ahmed // this.ahmed

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // When a BuildContext is used from a StatefulWidget, the mounted property
    // must be checked after an asynchronous gap.

    return Scaffold(
      appBar: AppBar(title: Text("Second"), automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.data}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UserName :",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                Text("${widget.username}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Password : ",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                Text("${widget.password}"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text('Done !')));
                },
                child: Icon(Icons.backpack))
          ],
        ),
      ),
    );
  }
}
