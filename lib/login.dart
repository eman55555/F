import 'package:day_8/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 69, 32, 19),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(197, 204, 196, 204),
                    labelText: 'Username',
                    labelStyle: TextStyle(fontSize: 19)),
              ),
            ),

// spacer
            const SizedBox(height: 12.0),
// [Password]
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Password',
                    fillColor: Color.fromARGB(197, 204, 196, 204),
                    labelStyle: TextStyle(fontSize: 19)),
                obscureText: true,
              ),
            ),

            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                // TODO: Add buttons (101)
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    // TODO: Clear the text fields (101)
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: const Text('NEXT'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(
                              data: "Welcome , your data :",
                              username: "${_usernameController.text}",
                              password: "${_passwordController.text}",
                            ),
                          ));

                      // TODO: Show the next page (101)
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
