import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingVariableNamesPage());
}

class CProgrammingVariableNamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Variable Names',
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
                'Variable Names in C',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Rules for Naming Variables',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, variable names must follow these rules:\n'
                '1. **Variable names must start with a letter (a-z, A-Z) or an underscore (_).**\n'
                '2. **After the first character, variable names can include letters, digits (0-9), or underscores.**\n'
                '3. **Variable names are case-sensitive.**\n'
                '4. **Variable names cannot be a reserved keyword.**\n'
                '5. **Variable names should not start with a digit.**\n\n'
                'Example of valid and invalid variable names:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
Valid Names:
1. myVar
2. _myVar
3. my_var_1
4. myVar1

Invalid Names:
1. 1myVar (starts with a digit)
2. my-Var (contains a hyphen)
3. my Var (contains a space)
4. int (reserved keyword)
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Examples in Code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here is an example of how to declare variables with valid names in C:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
#include <stdio.h>

int main() {
    int myVar = 5; // Valid variable name
    int _myVar = 10; // Valid variable name
    int my_var_1 = 15; // Valid variable name
    
    printf("Value of myVar: %d\\n", myVar);
    printf("Value of _myVar: %d\\n", _myVar);
    printf("Value of my_var_1: %d\\n", my_var_1);
    
    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Explanation:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. **Valid Variable Names**: The example demonstrates declaring variables with valid names. The names are all correctly formatted according to C naming rules.\n'
                '2. **Printing Values**: The `printf` function is used to display the values of the variables.\n\n'
                'This example helps illustrate how to correctly name variables in C programming.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
