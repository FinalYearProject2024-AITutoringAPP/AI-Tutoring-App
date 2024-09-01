import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusSwitchPage());
}

class CplusplusSwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Switch Statement',
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
                'C++ Switch Statement',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'Introduction:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The switch statement is used to perform different actions based on different conditions. It is an alternative to multiple if-else statements when dealing with multiple possible values for a single variable.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Basic Syntax
              Text(
                'Basic Syntax:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The basic syntax of a switch statement in C++ is as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int day = 3;
    switch (day) {
        case 1:
            cout << "Monday";
            break;
        case 2:
            cout << "Tuesday";
            break;
        case 3:
            cout << "Wednesday";
            break;
        case 4:
            cout << "Thursday";
            break;
        case 5:
            cout << "Friday";
            break;
        case 6:
            cout << "Saturday";
            break;
        case 7:
            cout << "Sunday";
            break;
        default:
            cout << "Invalid day";
            break;
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Fall Through
              Text(
                'Fall Through:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Fall through occurs when you omit the break statement in a case block. This causes the execution to continue into the subsequent case blocks.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int number = 2;
    switch (number) {
        case 1:
        case 2:
            cout << "Number is either 1 or 2";
            break;
        case 3:
            cout << "Number is 3";
            break;
        default:
            cout << "Number is not 1, 2, or 3";
            break;
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Multiple Cases
              Text(
                'Multiple Cases:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can group multiple case labels to execute the same block of code. This is useful when multiple values should trigger the same action.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    char grade = 'B';
    switch (grade) {
        case 'A':
            cout << "Excellent";
            break;
        case 'B':
        case 'C':
            cout << "Well done";
            break;
        case 'D':
            cout << "You passed";
            break;
        case 'F':
            cout << "Failed";
            break;
        default:
            cout << "Invalid grade";
            break;
    }
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
