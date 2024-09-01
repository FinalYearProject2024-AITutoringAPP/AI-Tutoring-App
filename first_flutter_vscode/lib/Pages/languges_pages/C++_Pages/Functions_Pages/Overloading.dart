import 'package:flutter/material.dart';

class CplusplusOverloadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Function Overloading',
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
                'Function Overloading',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Function Overloading?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Function overloading in C++ allows you to define multiple functions with the same name but different parameter lists. The correct function is selected based on the number and type of arguments passed during the function call.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Function Overloading Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Below is an example demonstrating function overloading. Two functions named `print` are defined, one for printing an integer and another for printing a double.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void print(int i) {\n  cout << "Integer: " << i << endl;\n}\n\n'
                  'void print(double d) {\n  cout << "Double: " << d << endl;\n}\n\n'
                  'int main() {\n  print(5);\n  print(5.5);\n  return 0;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Rules for Function Overloading',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Function overloading follows these rules:\n'
                '1. Function name must be the same.\n'
                '2. The number or type of parameters must be different.\n'
                '3. The return type alone is not enough to differentiate overloaded functions.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Overloading Constructors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constructors can also be overloaded. Different constructors can have different parameter lists, allowing objects to be initialized in different ways.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'class Box {\n'
                  'public:\n'
                  '  Box() {\n'
                  '    cout << "Default constructor" << endl;\n'
                  '  }\n\n'
                  '  Box(int l, int w, int h) {\n'
                  '    cout << "Parameterized constructor" << endl;\n'
                  '  }\n};\n\n'
                  'int main() {\n'
                  '  Box box1;\n'
                  '  Box box2(10, 20, 30);\n'
                  '  return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Function Overloading with Default Arguments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Overloaded functions can also have default arguments. Default arguments allow a function to be called with fewer arguments than defined.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void display(int a, int b = 10) {\n'
                  '  cout << "a: " << a << ", b: " << b << endl;\n'
                  '}\n\n'
                  'int main() {\n'
                  '  display(5);\n'
                  '  display(5, 20);\n'
                  '  return 0;\n'
                  '}',
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
