import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: JavaScriptSyntaxPage()));
}

class JavaScriptSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Syntax',
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
           
            SizedBox(height: 10.0),
            Text(
              'JavaScript syntax is the set of rules that defines a correctly structured JavaScript program. The syntax of JavaScript is the set of rules that define a valid JavaScript program. Below are some basic syntax elements:',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 20.0),

            Text(
              'Statements',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A statement is a single line of code that performs an action. Statements are separated by semicolons. Example:',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'let x = 5;\n'
                'let y = 6;\n'
                'let z = x + y;',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Variables',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Variables are containers for storing data values. In JavaScript, you can declare variables using `var`, `let`, or `const`.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'var name = "John";\n'
                'let age = 30;\n'
                'const pi = 3.14159;',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Comments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Comments are used to explain the code and make it more readable. Comments can be single-line or multi-line.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                '// This is a single-line comment\n'
                '/* This is a multi-line comment\n'
                '   spanning multiple lines */',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Functions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Functions are blocks of code designed to perform a particular task. They are executed when they are called.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'function myFunction() {\n'
                '  // Code to be executed\n'
                '}\n\n'
                'myFunction();',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                _executeCode(context, 'Simulated Output');
              },
              child: Text('Try it Yourself'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: TextStyle(fontFamily: 'Arial', fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _executeCode(BuildContext context, String output) {
    // Simulate code execution by displaying a dialog with the output
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Output"),
          content: Text(output),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
