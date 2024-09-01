import 'package:flutter/material.dart';

class CplusplusFunctionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Functions',
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
                'C++ Functions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is a Function?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A function is a block of code that performs a specific task. Functions help to divide a complex problem into smaller chunks and make code more manageable. You can call a function from any part of the program and execute it.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Declaration of Function',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To use a function in C++, you must first declare it. The syntax for declaring a function is:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'returnType functionName(parameters);',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Definition of Function',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'After declaring a function, you need to define it. The definition provides the actual body of the function and specifies what the function does. The syntax for defining a function is:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'returnType functionName(parameters) {\n  // body of function\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here is an example of a simple function in C++ that adds two numbers and returns the result:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int add(int a, int b) {\n  return a + b;\n}\n\nint main() {\n  int result = add(5, 3);\n  cout << "The sum is " << result;\n  return 0;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Function Overloading',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'C++ allows function overloading, where you can have multiple functions with the same name but different parameters. The function to be called is determined by the number and type of arguments passed.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int multiply(int a, int b) {\n  return a * b;\n}\nint multiply(double a, double b) {\n  return a * b;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Function Templates',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Function templates allow you to create functions that work with any data type. You define a template that is then instantiated with the specified data type.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'template <typename T>\nT max(T a, T b) {\n  return (a > b) ? a : b;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
