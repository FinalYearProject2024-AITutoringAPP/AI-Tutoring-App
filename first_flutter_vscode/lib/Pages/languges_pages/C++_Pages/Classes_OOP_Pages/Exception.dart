import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusExceptionPage());
}

class CplusplusExceptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Exceptions',
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
                'Exceptions in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is an Exception?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'An exception is an event that disrupts the normal flow of a program. Exceptions are used to handle errors or unexpected situations in a program. In C++, exceptions are handled using the try, catch, and throw keywords.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Throwing Exceptions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can throw an exception using the throw keyword. It creates an exception object and transfers control to the catch block.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Throwing an Exception:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

void checkAge(int age) {
  if (age < 18) {
    throw "Age is less than 18";
  }
  cout << "Access granted" << endl;
}

int main() {
  try {
    checkAge(16);
  } catch (const char* msg) {
    cerr << "Error: " << msg << endl;
  }
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Catching Exceptions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To catch exceptions, use the catch keyword. You can catch exceptions of specific types or catch all exceptions using the catch(...) syntax.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Catching Exceptions:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

void divide(int a, int b) {
  if (b == 0) {
    throw "Division by zero";
  }
  cout << "Result: " << a / b << endl;
}

int main() {
  try {
    divide(10, 0);
  } catch (const char* msg) {
    cerr << "Error: " << msg << endl;
  }
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Exception Hierarchy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'C++ exceptions can be part of an inheritance hierarchy. This allows you to catch more specific exceptions or base exceptions.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Exception Hierarchy:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class BaseException {
  public:
    virtual const char* what() const { return "Base Exception"; }
};

class DerivedException : public BaseException {
  public:
    const char* what() const override { return "Derived Exception"; }
};

void test() {
  throw DerivedException();
}

int main() {
  try {
    test();
  } catch (const DerivedException& e) {
    cerr << "Caught: " << e.what() << endl;
  } catch (const BaseException& e) {
    cerr << "Caught: " << e.what() << endl;
  }
  return 0;
}
''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodeBlock extends StatelessWidget {
  final String code;

  CodeBlock({required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier', color: Colors.white),
      ),
    );
  }
}
