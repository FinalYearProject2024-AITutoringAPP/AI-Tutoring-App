import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingScopePage());
}

class CProgrammingScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Scope',
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
                'C Scope',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'In C programming, scope refers to the region of a program where a variable or function can be accessed. Scope determines the visibility and lifetime of variables and functions.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '### Local Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared inside a function or block are known as local variables. They are only accessible within the function or block where they are declared. Local variables are created when the function or block is entered and destroyed when it is exited.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

void function() {
    int x = 10; // local variable
    printf("%d\\n", x);
}

int main() {
    function();
    return 0;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Global Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared outside of all functions are known as global variables. They are accessible from any function within the same file, or across multiple files if declared as extern. Global variables are created when the program starts and destroyed when the program ends.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

int x = 10; // global variable

void function() {
    printf("%d\\n", x);
}

int main() {
    function();
    printf("%d\\n", x);
    return 0;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Static Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The `static` keyword can be used to limit the scope of a variable to the file in which it is declared. A static variable retains its value between function calls, making it useful for preserving state.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

void function() {
    static int count = 0; // static variable
    count++;
    printf("%d\\n", count);
}

int main() {
    function();
    function();
    return 0;
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Block Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared inside a block (enclosed in curly braces) are only accessible within that block. They are known as block-scoped variables. This is typically used in loops or conditional statements.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
#include <stdio.h>

int main() {
    for (int i = 0; i < 5; i++) { // i is block scoped
        printf("%d\\n", i);
    }
    // printf("%d\\n", i); // Error: i is not accessible here
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
