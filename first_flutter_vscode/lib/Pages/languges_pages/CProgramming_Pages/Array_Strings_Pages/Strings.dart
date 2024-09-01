import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingStringsPage());
}

class CProgrammingStringsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Strings',
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
                'C Strings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'Strings are used for storing text. A string in C is actually a one-dimensional array of characters, '
                'which is terminated by a null character \'\\0\'.'
              ),
              SizedBox(height: 20.0),

              // Declaring a String
              _buildSectionTitle('Declaring a String'),
              _buildSectionContent(
                'To declare a string in C, use the following syntax:\n'
                '```c\n'
                'char greeting[6] = "Hello";\n'
                '```\n'
                'Here, the string "Hello" is stored in an array of characters and a null character is automatically appended '
                'at the end.'
              ),
              SizedBox(height: 20.0),

              // Example of Declaring a String
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                '#include <stdio.h>\n\n'
                'int main() {\n'
                '  char greeting[6] = "Hello";\n'
                '  printf("%s", greeting);\n'
                '  return 0;\n'
                '}\n'
                '```\n'
                'This program declares a string and prints "Hello".'
              ),
              SizedBox(height: 20.0),

              // Accessing Strings
              _buildSectionTitle('Accessing Strings'),
              _buildSectionContent(
                'Strings in C are accessed using the array notation. Individual characters in a string can be accessed using '
                'their index.'
              ),
              SizedBox(height: 20.0),

              // Example of Accessing Strings
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                '#include <stdio.h>\n\n'
                'int main() {\n'
                '  char greeting[6] = "Hello";\n'
                '  printf("%c", greeting[0]);\n' // Outputs 'H'
                '  return 0;\n'
                '}\n'
                '```\n'
                'This program accesses and prints the first character of the string "Hello", which is \'H\'.'
              ),
              SizedBox(height: 20.0),

              // String Functions
              _buildSectionTitle('String Functions'),
              _buildSectionContent(
                'The C library provides a variety of functions to work with strings, such as `strlen` for getting the length of a string, '
                '`strcpy` for copying one string to another, and `strcat` for concatenating two strings.'
              ),
              SizedBox(height: 20.0),

              // Example of String Functions
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                '#include <stdio.h>\n'
                '#include <string.h>\n\n'
                'int main() {\n'
                '  char str1[20] = "Hello";\n'
                '  char str2[20];\n\n'
                '  // Copy str1 to str2\n'
                '  strcpy(str2, str1);\n'
                '  printf("%s", str2); // Outputs "Hello"\n\n'
                '  // Concatenate str1 and str2\n'
                '  strcat(str1, " World");\n'
                '  printf("%s", str1); // Outputs "Hello World"\n\n'
                '  // Get length of str1\n'
                '  printf("%lu", strlen(str1)); // Outputs 11\n\n'
                '  return 0;\n'
                '}\n'
                '```\n'
                'This program demonstrates copying, concatenating, and getting the length of a string using string functions.'
              ),
              SizedBox(height: 20.0),

              // Important Notes
              _buildSectionTitle('Important Notes'),
              _buildSectionContent(
                'Remember that strings in C are null-terminated. When working with strings, always ensure that the string is properly '
                'null-terminated to avoid unexpected behavior.'
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
