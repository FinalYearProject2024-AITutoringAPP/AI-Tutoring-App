import 'package:flutter/material.dart';

void main() {
  runApp(CPlusPlusMultipleVariablesPage());
}

class CPlusPlusMultipleVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Multiple Variables',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'C++ Multiple Variables',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              // Introduction
              Text(
                'In C++, you can declare multiple variables of the same type in a single line. This can make your code more concise and readable.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Example of Multiple Declaration
              Text(
                'Example of Declaring Multiple Variables:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nint main() {
  int a = 5, b = 10, c = 15;  // Declare and initialize multiple integer variables
  return 0;
}''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Different Types
              Text(
                'Declaring Variables of Different Types:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nYou can also declare multiple variables of different types in a single line, but you must do it in separate declarations.

Example:
\nint main() {
  int x = 1;
  float y = 2.5;
  char z = 'A';
  return 0;
}''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Initialization
              Text(
                'Initialization of Multiple Variables:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nWhen declaring multiple variables, you can also initialize them all at once.

Example:
\nint main() {
  int a = 1, b = 2, c = 3;  // All variables are initialized
  return 0;
}''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Constants
              Text(
                'Declaring Multiple Constants:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nTo declare multiple constants, use the `const` keyword with each variable.

Example:
\nconst int MAX = 100, MIN = 0;''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
