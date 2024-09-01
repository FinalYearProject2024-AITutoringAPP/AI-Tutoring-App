import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingFunctionParametersPage());
}

class CProgrammingFunctionParametersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Functions and Parameters',
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
                'C Functions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'In C programming, functions are used to perform specific tasks. Functions help to divide the program into smaller, manageable parts. A function is defined using the following syntax:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
return_type function_name(parameters) {
    // body of the function
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Function Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

void greet() {
    printf("Hello, World!\\n");
}

int main() {
    greet();
    return 0;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                'C Function Parameters',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Functions can also take parameters, which are values that are passed to the function. Parameters are defined in the function definition and can be used inside the function body. The syntax is as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
return_type function_name(type1 param1, type2 param2) {
    // body of the function
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Function with Parameters Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

void greet_person(char name[]) {
    printf("Hello, %s!\\n", name);
}

int main() {
    char name[] = "Alice";
    greet_person(name);
    return 0;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Default Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, there are no default parameters for functions. You must explicitly pass all the arguments when calling a function.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '### Variable Arguments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can use variable arguments in C with the `<stdarg.h>` library. Here’s an example of how to use it:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>
#include <stdarg.h>

void print_numbers(int count, ...) {
    va_list args;
    va_start(args, count);
    for (int i = 0; i < count; i++) {
        printf("%d ", va_arg(args, int));
    }
    va_end(args);
    printf("\\n");
}

int main() {
    print_numbers(3, 1, 2, 3);
    return 0;
}
              '''),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier New', fontSize: 16, color: Colors.white),
      ),
    );
  }
}
