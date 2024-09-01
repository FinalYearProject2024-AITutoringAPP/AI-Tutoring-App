import 'package:flutter/material.dart';

void main() {
  runApp(CPlusPlusDeclareVariablesPage());
}

class CPlusPlusDeclareVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Variables',
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
                'C++ Variables',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              // Introduction
              Text(
                'In C++, a variable is a container that holds data that can be changed during program execution. To declare a variable in C++, you specify the type of the variable followed by its name.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Example of Declaration
              Text(
                'Example of Variable Declaration:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nint main() {
  int myNumber;    // Declare an integer variable
  myNumber = 5;    // Assign a value to the variable
  return 0;
}''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Types of Variables
              Text(
                'Types of Variables:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n1. int: Stores integer values.
2. float: Stores floating-point values.
3. double: Stores double-precision floating-point values.
4. char: Stores single characters.
5. string: Stores sequences of characters.''',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Variable Initialization
              Text(
                'Variable Initialization:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nint main() {
  int myNumber = 5; // Declare and initialize variable
  float myFloat = 4.5; // Declare and initialize float
  return 0;
}''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Constants
              Text(
                'Constants:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nTo declare a constant variable, use the keyword `const` before the variable type.
Example:
\nconst int DAYS_IN_WEEK = 7;''',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
