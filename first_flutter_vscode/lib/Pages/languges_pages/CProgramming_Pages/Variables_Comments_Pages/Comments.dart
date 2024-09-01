import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingCommentsPage());
}

class CProgrammingCommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Comments',
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
                'Comments in C',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Comments are used to explain code and make it more readable. In C, comments can be written in two ways:\n\n'
                '1. **Single-Line Comments**: These comments start with `//` and continue to the end of the line.\n'
                '2. **Multi-Line Comments**: These comments start with `/*` and end with `*/`. They can span multiple lines.\n\n'
                'Comments are ignored by the compiler and do not affect the execution of the code.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Single-Line Comments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Single-line comments are used for brief explanations or notes. They are added by using `//` followed by the comment text. Everything following `//` on that line will be treated as a comment.\n\n'
                'Example:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
// This is a single-line comment
int main() {
    printf("Hello, World!"); // This is another single-line comment
    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Multi-Line Comments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Multi-line comments are used for longer explanations or notes that span multiple lines. They start with `/*` and end with `*/`.\n\n'
                'Example:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
/*
This is a multi-line comment
It can span multiple lines
*/
int main() {
    printf("Hello, World!");
    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Nested Comments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'C does not support nested multi-line comments. Attempting to nest multi-line comments will result in a compilation error. Always ensure that multi-line comments are properly closed before starting another comment.\n\n'
                'Example:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
/*
This is a multi-line comment
/* This is a nested comment (will cause an error) */
*/
int main() {
    printf("Hello, World!");
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
