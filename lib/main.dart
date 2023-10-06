import 'package:day_8/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginScreen(title: "Login Page"),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
  ));
}
/*local & global keys :*/

// There are four types of keys in Flutter, which are as follows:

// Value key: It stores the alphanumeric value of the widget.
// Object key: It stores complex objects in which multiple objects have the same values, such as date of birth or name. It usually would be a custom class.
// Unique key: It stores every widget state as unique. It is easy to identify them when we need to recall them.
// Global key: It allows developers to access the data of one widget inside another in your application. It can help the developers but can also destroy the state management. It is a very controversial key as better state management options are available. It can be helpful in form validation situations where we need to validate some common data.

/* if - else */

// Use the ternary operator
// condition ? Text("True") : null,
// Use If or For statements or spread operators in collections
// children: [
//   ...manyItems,
//   oneItem,
//   if(canIKickIt)
//     ...kickTheCan
//   for (item in items)
//     Text(item)

/* loop */
// Two alternatives :

// final children = <Widget>[];
// for (var i = 0; i < 10; i++) {
//   children.add(new ListTile());
// }
// return new ListView(
//   children: children,
// );
// or

// return new ListView(
//   children: new List.generate(10, (index) => new ListTile()),
// );

/* switch case */
// switch (expression) {
//   case ONE:
//     {
//       statement(s);
//     }
//   break;

//   case TWO:
//     {
//       statement(s);
//     }
//   break;

//   default:
//     {
//       statement(s);
//     }
// }