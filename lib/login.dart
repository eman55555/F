import 'package:day_8/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 226, 230),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
        child: Column(
          children: [
            const Center(
              child: Column(
                children: [
                  Icon(
                    Icons.diamond,
                    size: 50,
                    color: Color.fromARGB(255, 69, 32, 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SHRINE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 69, 32, 19),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(197, 204, 196, 204),
                      labelText: 'Username',
                      labelStyle: TextStyle(fontSize: 19)),
                ),
                SizedBox(height: 15.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(197, 204, 196, 204),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 19)),
                  obscureText: true,
                ),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(fontSize: 18, color: Colors.purple[700]),
                  ),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      backgroundColor: Colors.white,

                      // ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.purple[700],
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
