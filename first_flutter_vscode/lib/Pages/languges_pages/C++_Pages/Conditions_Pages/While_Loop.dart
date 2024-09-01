import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusWhileLoopPage());
}

class CplusplusWhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ While Loop',
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
                'C++ While Loop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'The while loop in C++ repeatedly executes a block of code as long as a specified condition is true. It is a pre-test loop that checks the condition before executing the loop body.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Syntax
              Text(
                'Syntax:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The syntax of a while loop is as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
while (condition) {
    // code block
}
              '''),
              SizedBox(height: 20.0),

              // Example
              Text(
                'Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here is a simple example of a while loop that prints numbers from 1 to 5:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int i = 1;
    while (i <= 5) {
        cout << i << " ";
        i++;
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Infinite Loop
              Text(
                'Infinite Loop:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'An infinite loop occurs when the condition of the while loop always evaluates to true. Be cautious with infinite loops as they can cause the program to run indefinitely.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    while (true) {
        cout << "This is an infinite loop!";
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Break Statement
              Text(
                'Break Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can use the break statement to exit the while loop prematurely. This is useful when a specific condition is met within the loop.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int i = 1;
    while (i <= 10) {
        if (i == 5) {
            break;
        }
        cout << i << " ";
        i++;
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Continue Statement
              Text(
                'Continue Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The continue statement skips the rest of the code inside the loop for the current iteration and proceeds with the next iteration of the loop.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int i = 1;
    while (i <= 10) {
        if (i % 2 == 0) {
            i++;
            continue;
        }
        cout << i << " ";
        i++;
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
