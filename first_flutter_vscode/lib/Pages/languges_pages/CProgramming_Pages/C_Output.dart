import 'package:flutter/material.dart';

class COutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C Programming Output',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'C Output',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In C programming, the `printf()` function is used to output text to the screen. The function is included in the `stdio.h` library and allows you to display formatted text.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Example: Using printf() to Display Text',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n'
              'int main() {\n'
              '    printf("Hello, World!");\n'
              '    return 0;\n'
              '}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program will output: **Hello, World!**',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Formatted Output with printf()',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The `printf()` function can also be used to output other types of data, including variables and expressions. Here’s an example:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'int myNum = 10;\n'
              'printf("My number is: %d", myNum);',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In this example, the `%d` format specifier is used to insert the value of `myNum` into the string. The output will be: **My number is: 10**',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'New Lines in Output',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'To add a new line in the output, you can use the `\\n` escape sequence in the `printf()` function.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Example: Adding a New Line',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'printf("Hello, World!\\n");\n'
              'printf("This is a new line.");',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program will output:\n'
              '**Hello, World!**\n'
              '**This is a new line.**',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Using Multiple Escape Sequences',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You can also use other escape sequences like `\\t` for a tab space, `\\\"` for double quotes, and `\\\\` for a backslash. Here’s an example:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'printf("A tab space:\\t and a new line:\\n");\n'
              'printf("Displaying a backslash \\\\");',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program will output:\n'
              '**A tab space:    and a new line:**\n'
              '**Displaying a backslash \\**',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Summary',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The `printf()` function in C is essential for displaying output to the screen. Understanding how to format output, use escape sequences, and manipulate text display is fundamental to creating user-friendly programs.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
