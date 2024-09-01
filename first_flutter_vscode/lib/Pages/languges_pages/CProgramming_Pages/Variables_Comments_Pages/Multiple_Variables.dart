import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingMultipleVariablesPage());
}

class CProgrammingMultipleVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Multiple Variables',
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
                'Multiple Variables in C',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Declaring Multiple Variables',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, you can declare multiple variables of the same type in a single statement. This can help make your code cleaner and more concise.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In the following example, we declare multiple integer variables in one statement and initialize them with different values:',
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
    int a = 10, b = 20, c = 30; // Declare and initialize multiple variables
    printf("Value of a: %d\\n", a);
    printf("Value of b: %d\\n", b);
    printf("Value of c: %d\\n", c);
    
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
                '1. **Declaration and Initialization**: The variables `a`, `b`, and `c` are declared as integers and initialized with the values `10`, `20`, and `30`, respectively.\n'
                '2. **Printing Values**: The `printf` function is used to display the values of the variables `a`, `b`, and `c`.\n\n'
                'This example demonstrates how to declare and initialize multiple variables of the same type in a single line, and how to print their values.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
