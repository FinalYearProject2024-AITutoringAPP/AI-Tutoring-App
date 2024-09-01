import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingFunctionDeclarationPage());
}

class CProgrammingFunctionDeclarationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Function Declaration',
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
                'C Function Declaration',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'In C, a function declaration (or function prototype) tells the compiler about the function\'s name, return type, and parameters. It provides the information needed to call the function before its actual definition is provided.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '### Function Declaration Syntax',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The syntax for a function declaration is as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
return_type function_name(parameter1_type parameter1, parameter2_type parameter2, ...);
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Example of Function Declaration',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here is an example of a function declaration for a function that adds two integers:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
int add(int a, int b);
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Full Example with Function Definition',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Below is a complete example including the function declaration and its definition:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

// Function Declaration
int add(int a, int b);

int main() {
    int result;
    result = add(5, 3); // Function call
    printf("The sum is %d\\n", result);
    return 0;
}

// Function Definition
int add(int a, int b) {
    return a + b;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Why Use Function Declarations?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Function declarations are useful for several reasons:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '- **Forward Declaration:** They allow functions to be called before they are defined in the source code.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '- **Type Checking:** They provide type checking for function arguments and return values.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '- **Code Organization:** They improve code organization and readability.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier New', fontSize: 16, color: Colors.white),
      ),
    );
  }
}
