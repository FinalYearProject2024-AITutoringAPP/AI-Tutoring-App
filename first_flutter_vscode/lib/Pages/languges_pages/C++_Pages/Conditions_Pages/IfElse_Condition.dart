import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusIfElsePage());
}

class CplusplusIfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ If Else Statements',
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
                'C++ If Else Statements',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'In C++, conditional statements are used to perform different actions based on different conditions. The most common conditional statements are if, else, and else if.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // If Statement
              Text(
                'If Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The if statement executes a block of code if the condition is true. If the condition is false, the code block is skipped.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int a = 10;
    if (a > 5) {
        cout << "a is greater than 5";
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Else Statement
              Text(
                'Else Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The else statement executes a block of code if the condition in the if statement is false.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int a = 3;
    if (a > 5) {
        cout << "a is greater than 5";
    } else {
        cout << "a is not greater than 5";
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Else If Statement
              Text(
                'Else If Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The else if statement allows you to check multiple conditions. If the condition of the if statement is false, it will check the condition of the else if statement.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int a = 8;
    if (a > 10) {
        cout << "a is greater than 10";
    } else if (a > 5) {
        cout << "a is greater than 5 but less than or equal to 10";
    } else {
        cout << "a is 5 or less";
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Shorthand If Else
              Text(
                'Shorthand If Else:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The shorthand if else statement is used to assign a value based on a condition in a single line.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int a = 10;
    string result = (a > 5) ? "a is greater than 5" : "a is not greater than 5";
    cout << result;
    return 0;
}
              '''),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
