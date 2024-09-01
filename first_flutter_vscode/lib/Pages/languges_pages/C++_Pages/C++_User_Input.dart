import 'package:flutter/material.dart';

class CPlusPlusUserInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ User Input',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: C++ User Input
            Text(
              'C++ User Input',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'You have already learned that `cout` is used to output (print) values. Now we will use `cin` to get user input.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),

            // Section 2: The cin Object
            _buildSectionTitle('The cin Object'),
            Text(
              'The `cin` object is used together with the extraction operator (`>>`) to get user input. In the following example, the user can input a number, which is stored in the variable `x`.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
#include <iostream>
using namespace std;

int main() {
  int x;
  cout << "Type a number: "; // Type a number and press enter
  cin >> x; // Get user input from the keyboard
  cout << "Your number is: " << x;
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Type a number: 7\nYour number is: 7',
            ),
            SizedBox(height: 20.0),

            // Section 3: User Input Strings
            _buildSectionTitle('User Input Strings'),
            Text(
              'You can also get string input from the user. In the following example, the user can input a string, which is stored in the variable `name`.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
#include <iostream>
using namespace std;

int main() {
  string name;
  cout << "Enter your name: ";
  cin >> name;
  cout << "Hello, " << name << "!";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Enter your name: John\nHello, John!',
            ),
            SizedBox(height: 20.0),

            // Section 4: Combined Example
            _buildSectionTitle('Combined Example'),
            Text(
              'You can also combine multiple inputs and outputs. In the following example, the user can input both their name and age:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
#include <iostream>
using namespace std;

int main() {
  string name;
  int age;
  
  cout << "Enter your name: ";
  cin >> name;
  
  cout << "Enter your age: ";
  cin >> age;
  
  cout << "Your name is " << name << " and you are " << age << " years old.";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Enter your name: John\nEnter your age: 25\nYour name is John and you are 25 years old.',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[850],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 16,
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }

  Widget _buildOutputExample(String output) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Text(
        output,
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 16,
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}
