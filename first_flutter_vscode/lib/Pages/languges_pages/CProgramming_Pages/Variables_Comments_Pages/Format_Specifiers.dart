import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingFormatSpecifiersPage());
}

class CProgrammingFormatSpecifiersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Format Specifiers',
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
                'Format Specifiers',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What Are Format Specifiers?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Format specifiers in C are used to format the output of data. They are placeholders used in functions like `printf` to specify the type and format of the output data.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Common Format Specifiers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here are some commonly used format specifiers in C:\n\n'
                '- `%d` or `%i`: Integer\n'
                '- `%f`: Floating-point number\n'
                '- `%lf`: Double precision floating-point number\n'
                '- `%c`: Character\n'
                '- `%s`: String\n'
                '- `%x` or `%X`: Hexadecimal (lowercase/uppercase)\n'
                '- `%o`: Octal\n\n'
                'For example:\n\n'
                '```c\n'
                'int num = 100;\n'
                'float pi = 3.14;\n'
                'char letter = \'A\';\n'
                'printf("Integer: %d\\n", num);\n'
                'printf("Float: %.2f\\n", pi);\n'
                'printf("Character: %c\\n", letter);\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Formatting Output',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Format specifiers can also include width and precision to control the output format. For example:\n\n'
                '- `%5d`: Minimum width of 5 characters for integer output\n'
                '- `%.2f`: Floating-point number with 2 decimal places\n'
                '- `%10s`: Minimum width of 10 characters for string output\n\n'
                'Example:\n\n'
                '```c\n'
                'int num = 123;\n'
                'printf("Formatted number: %5d\\n", num);\n'
                'printf("Formatted float: %.2f\\n", 3.14159);\n'
                'printf("Formatted string: %10s\\n", "Hello");\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example Code:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
#include <stdio.h>

int main() {
    int num = 100;
    float pi = 3.14159;
    char letter = 'A';
    char str[] = "Hello";

    printf("Integer: %d\\n", num);
    printf("Float: %.2f\\n", pi);
    printf("Character: %c\\n", letter);
    printf("String: %s\\n", str);
    printf("Hexadecimal: %x\\n", num);
    printf("Octal: %o\\n", num);
    printf("Formatted number: %5d\\n", num);
    printf("Formatted float: %.2f\\n", pi);
    printf("Formatted string: %10s\\n", str);

    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
