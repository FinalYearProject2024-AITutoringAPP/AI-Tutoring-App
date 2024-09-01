import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingSpecialCharactersPage());
}

class CProgrammingSpecialCharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Special Characters',
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
                'C Special Characters (Escape Sequences)',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'Special characters in C, also known as escape sequences, are used to represent certain characters in '
                'strings that cannot be typed directly, such as newline, tab, or backslash.'
              ),
              SizedBox(height: 20.0),

              // List of Escape Sequences
              _buildSectionTitle('List of Escape Sequences'),
              _buildSectionContent(
                'Here are some commonly used escape sequences in C:\n'
                '- `\\n`: Newline\n'
                '- `\\t`: Horizontal Tab\n'
                '- `\\\\`: Backslash\n'
                '- `\\\'`: Single Quote\n'
                '- `\\"`: Double Quote\n'
                '- `\\0`: Null Character'
              ),
              SizedBox(height: 20.0),

              // Example of Using Escape Sequences
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                '#include <stdio.h>\n\n'
                'int main() {\n'
                '  printf("Hello World!\\n");  // Prints Hello World! and moves to a new line\n'
                '  printf("Hello\\tWorld!\\n"); // Prints Hello   World! with a tab space in between\n'
                '  printf("Hello \\"World\\"!\\n"); // Prints Hello "World"!\n'
                '  return 0;\n'
                '}\n'
                '```\n'
                'This program demonstrates the use of different escape sequences in C.'
              ),
              SizedBox(height: 20.0),

              // Explanation of the Example
              _buildSectionTitle('Explanation of the Example'),
              _buildSectionContent(
                '- The `\\n` escape sequence is used to move the cursor to the next line.\n'
                '- The `\\t` escape sequence inserts a horizontal tab space.\n'
                '- The `\\"` escape sequence allows the use of double quotes inside a string.'
              ),
              SizedBox(height: 20.0),

              // Important Notes
              _buildSectionTitle('Important Notes'),
              _buildSectionContent(
                'Escape sequences are an essential part of string manipulation in C. They allow you to control the formatting '
                'and structure of your output text.'
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(fontSize: 16, color: Colors.white70),
    );
  }
}
