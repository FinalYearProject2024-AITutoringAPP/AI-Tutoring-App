import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: JavaScriptVariablesPage()));
}

class JavaScriptVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Variables',
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
              'Variables in JavaScript are containers for storing data values. JavaScript uses `var`, `let`, and `const` to declare variables.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 20.0),

            Text(
              'Declaring Variables',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'In JavaScript, you can declare a variable using `var`, `let`, or `const`.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'var x = 5;\n'
                'let y = 6;\n'
                'const z = 7;',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Variable Naming',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Variable names can contain letters, numbers, underscores, and dollar signs. They must begin with a letter, underscore, or dollar sign.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'let name = "John";\n'
                'let _age = 30;\n'
                'let price = 29.99;',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 18,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Variable Scope',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Variables declared with `var` are function-scoped, while variables declared with `let` and `const` are block-scoped.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'function testScope() {\n'
                '  if (true) {\n'
                '    var x = 1;\n'
                '    let y = 2;\n'
                '  }\n'
                '  console.log(x); // 1\n'
                '  console.log(y); // ReferenceError\n'
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
              'Constant Variables',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Variables declared with `const` are constants, meaning their values cannot be changed after they are assigned.',
              style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[850],
              child: Text(
                'const PI = 3.14159;\n'
                'PI = 3.14; // Error: Assignment to constant variable',
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
