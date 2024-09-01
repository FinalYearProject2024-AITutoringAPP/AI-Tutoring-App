import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusBreakContinuePage());
}

class CplusplusBreakContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Break and Continue',
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
                'Break and Continue Statements',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Break Statement
              Text(
                'Break Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The break statement is used to exit from a loop or a switch statement prematurely. It immediately terminates the innermost loop or switch statement and transfers control to the statement following the loop or switch.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    for (int i = 0; i < 10; i++) {
        if (i == 5) {
            break; // Exit the loop when i is 5
        }
        cout << i << " ";
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
                'The continue statement is used to skip the current iteration of a loop and continue with the next iteration. It is used to skip certain conditions within the loop without exiting it.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    for (int i = 0; i < 10; i++) {
        if (i == 5) {
            continue; // Skip the rest of the loop body when i is 5
        }
        cout << i << " ";
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Break in Switch
              Text(
                'Break in Switch Statement:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In a switch statement, the break statement is used to exit from the switch case block. Without the break statement, the execution will continue into the next case block, which is known as fall-through.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    int num = 2;
    switch (num) {
        case 1:
            cout << "One";
            break;
        case 2:
            cout << "Two";
            break;
        case 3:
            cout << "Three";
            break;
        default:
            cout << "Not in the list";
            break;
    }
    return 0;
}
              '''),
              SizedBox(height: 20.0),

              // Continue in Nested Loops
              Text(
                'Continue in Nested Loops:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'When used inside nested loops, the continue statement only affects the innermost loop. It skips the current iteration of the inner loop and proceeds to the next iteration of that loop.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeSnippet('''
#include <iostream>
using namespace std;

int main() {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (j == 1) {
                continue; // Skip the rest of the inner loop when j is 1
            }
            cout << "i=" << i << " j=" << j << endl;
        }
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
