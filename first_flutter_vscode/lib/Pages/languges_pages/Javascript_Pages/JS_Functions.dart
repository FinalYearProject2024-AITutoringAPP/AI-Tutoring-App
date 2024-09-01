import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: JavaScriptFunctionsPage()));
}

class JavaScriptFunctionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Functions',
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
              'A JavaScript function is a block of code designed to perform a particular task. Functions are executed when they are called.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 20.0),

            Text(
              'Creating a Function',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'To create a function, use the `function` keyword, followed by a name, parentheses `()`, and a block of code in curly braces `{}`:',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'function myFunction() {\n'
                '  // Code to be executed\n'
                '}',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Calling a Function',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'To call a function, use the function name followed by parentheses `()`:',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'myFunction();',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Function Parameters',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'You can pass data into functions using parameters. Parameters are listed inside the parentheses when you define a function, and you can use them inside the function block.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'function greet(name) {\n'
                '  return "Hello, " + name;\n'
                '}\n\n'
                'greet("World"); // Returns "Hello, World"',
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
