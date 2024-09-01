import 'package:flutter/material.dart';

class CPlusPlusOutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Output',
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
            // Section 1: C++ Output
            Text(
              'C++ Output',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'In C++, the `cout` object, together with the insertion operator (`<<`), is used to output values/print text:',
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

            // Section 2: C++ New Lines
            _buildSectionTitle('C++ New Lines'),
            Text(
              'To insert a new line, you can use the `endl` manipulator or the newline character (`\\n`).',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here is an example of how to use `endl` and `\\n` to print text on different lines:',
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
  cout << "Hello World!" << endl;
  cout << "I am learning C++";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Hello World!\nI am learning C++',
            ),
            SizedBox(height: 20.0),

            _buildCodeExample(
              '''
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!\\n";
  cout << "I am learning C++";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Hello World!\nI am learning C++',
            ),
            SizedBox(height: 20.0),

            // Section 3: Multiple Outputs
            _buildSectionTitle('Multiple Outputs'),
            Text(
              'You can print multiple lines of text using multiple `cout` statements or by chaining insertion operators (`<<`):',
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
  cout << "Hello World!\\n";
  cout << "I am learning C++\\n";
  cout << "It is awesome!";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Hello World!\nI am learning C++\nIt is awesome!',
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!\\n" << "I am learning C++\\n" << "It is awesome!";
  return 0;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Hello World!\nI am learning C++\nIt is awesome!',
            ),
            SizedBox(height: 20.0),

            // Conclusion
            _buildSectionTitle('Conclusion'),
            Text(
              'Understanding C++ output and how to manage new lines is essential for creating readable and well-structured programs. The `cout` object and `<<` operator provide a flexible and powerful way to display text and values in C++.',
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
