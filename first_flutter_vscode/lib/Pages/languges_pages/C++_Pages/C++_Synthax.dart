import 'package:flutter/material.dart';

class CPlusPlusSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Syntax',
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
            // Section 1: Introduction to C++ Syntax
            Text(
              'C++ Syntax',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'C++ syntax is the set of rules that defines the combinations of symbols that are considered to be correctly structured programs in the language. A C++ program is made up of functions and variables.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Here is an example of a simple C++ program:',
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
  cout << "Hello World!";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            Text(
              'The output will be:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOutputExample('Hello World!'),
            SizedBox(height: 20.0),

            // Section 2: C++ Code Structure
            _buildSectionTitle('C++ Code Structure'),
            Text(
              'Let’s break down the different parts of the C++ code:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildBulletPoint(
                '`#include <iostream>`: This is a preprocessor directive that tells the compiler to include the input-output stream library.'),
            _buildBulletPoint(
                '`using namespace std;`: This line tells the compiler to use the standard namespace so you don’t have to prefix standard library functions with `std::`.'),
            _buildBulletPoint(
                '`int main()`: This is the main function where the program execution begins.'),
            _buildBulletPoint(
                '`cout << "Hello World!";`: This line outputs the text "Hello World!" to the console.'),
            _buildBulletPoint(
                '`return 0;`: This statement ends the main function and returns the value 0 to the operating system, indicating that the program ran successfully.'),
            SizedBox(height: 20.0),

            // Section 3: C++ Statements
            _buildSectionTitle('C++ Statements'),
            Text(
              'A statement in C++ is an instruction that the compiler can execute. Every C++ statement ends with a semicolon (`;`).',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here is an example of a C++ statement:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample('int x = 10;'),
            SizedBox(height: 10.0),
            Text(
              'This is a simple C++ statement that declares an integer variable `x` and assigns it the value of 10.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),

            // Section 4: Multi-Line Statements
            _buildSectionTitle('Multi-Line Statements'),
            Text(
              'C++ allows you to split a statement into multiple lines. This can be useful for improving code readability.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here is an example of a multi-line statement:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
int x = 10 +
        20 +
        30;''',
            ),
            SizedBox(height: 10.0),
            Text(
              'In this example, the addition operation is split across multiple lines for better readability.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),

            // Section 5: C++ Identifiers
            _buildSectionTitle('C++ Identifiers'),
            Text(
              'Identifiers are names given to variables, functions, arrays, classes, etc. in C++. They must begin with a letter or an underscore, followed by letters, digits, or underscores.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here is an example of a valid identifier:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample('int myVariable = 5;'),
            SizedBox(height: 20.0),

            // Section 6: C++ Whitespace
            _buildSectionTitle('C++ Whitespace'),
            Text(
              'Whitespace in C++ refers to spaces, tabs, and newlines that are used to separate code. Whitespace is mostly ignored by the compiler, except when it is used to separate identifiers and keywords.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here is an example where whitespace is used for better readability:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
int a = 5;
int b = 6;
int sum = a + b;''',
            ),
            SizedBox(height: 20.0),

            // Conclusion
            _buildSectionTitle('Conclusion'),
            Text(
              'Understanding the syntax and structure of C++ is crucial for writing efficient and error-free code. Every C++ program is built using statements, identifiers, and proper use of whitespace, which together form the foundation of the language.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
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

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
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
