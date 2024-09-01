import 'package:flutter/material.dart';

class CSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C Programming Syntax',
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
              'Basic Syntax',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'A C program consists of various elements, including functions, variables, statements, and expressions. Every C program has a main() function, which is the entry point for execution.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Structure of a C Program',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n'
              'int main() {\n'
              '    // Your code goes here\n'
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
              '1. **#include <stdio.h>**: This is a preprocessor command that includes the standard input-output library before compilation.\n'
              '2. **int main()**: This is the main function, where program execution begins.\n'
              '3. **return 0;**: This statement ends the main function and returns 0 to the operating system, indicating successful execution.\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Comments in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Comments are used to explain code and are ignored by the compiler. C supports two types of comments:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '// Single-line comment\n'
              '/* Multi-line\n'
              '   comment */',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Statements in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In C, a statement is an instruction that the compiler executes. Statements are usually terminated with a semicolon `;`.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Examples of Statements:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'int x = 10;\n'
              'printf("Hello, World!");\n'
              'x = x + 1;',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Blocks in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'A block is a set of statements enclosed within curly braces `{}`. Blocks are used to group statements together, for example, in functions, loops, or conditionals.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Example of a Block:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'if (x > 0) {\n'
              '    printf("x is positive");\n'
              '} else {\n'
              '    printf("x is not positive");\n'
              '}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Whitespace in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Whitespace refers to characters that are used for formatting code, such as spaces, tabs, and newlines. In C, whitespace is generally ignored by the compiler, but it is important for improving the readability of code.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Example of Whitespace Usage:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'int x = 10;\n'
              'if (x > 0) {\n'
              '    printf("x is positive");\n'
              '}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
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
              'Understanding the basic syntax of C is essential for writing effective programs. This includes knowing how to structure a program, use statements and blocks, and apply comments and whitespace for better readability. Mastery of these fundamentals is the first step in becoming proficient in C programming.',
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
