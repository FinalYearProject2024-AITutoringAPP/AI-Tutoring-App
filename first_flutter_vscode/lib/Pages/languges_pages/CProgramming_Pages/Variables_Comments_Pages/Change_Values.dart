import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingChangeValuesPage());
}

class CProgrammingChangeValuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Change Values',
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
                'Changing Variable Values',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Changing Variable Values in C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, you can change the value of a variable by simply assigning a new value to it. This is typically done using the assignment operator `=`.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In the following example, we declare an integer variable, assign it a value, change the value, and then print both values:',
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
    int num = 10; // Initialize variable
    printf("Initial value: %d\\n", num);
    
    num = 20; // Change variable value
    printf("New value: %d\\n", num);
    
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
                '1. **Initialization**: We start by declaring and initializing an integer variable `num` with the value `10`.\n'
                '2. **Printing Initial Value**: We print the initial value of `num` using `printf`.\n'
                '3. **Changing Value**: We change the value of `num` to `20`.\n'
                '4. **Printing New Value**: We print the new value of `num` to show the updated value.\n\n'
                'This example demonstrates how to change the value of a variable and display both the initial and new values.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
