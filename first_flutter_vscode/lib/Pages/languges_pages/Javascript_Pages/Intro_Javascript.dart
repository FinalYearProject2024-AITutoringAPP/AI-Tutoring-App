import 'package:flutter/material.dart';

void main() {
  runApp(JavaScriptIntroductionPage());
}

class JavaScriptIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JavaScript Introduction',
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
              // Main heading
              
              SizedBox(height: 10.0),

              // Introduction paragraph
              Text(
                'JavaScript is the world\'s most popular programming language.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'JavaScript is the programming language of the Web.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'JavaScript is easy to learn.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'This tutorial will teach you JavaScript from basic to advanced.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              // Example section with code snippet
              Text(
                'Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              _buildCodeExample(
                '<!DOCTYPE html>\n'
                '<html>\n'
                '<body>\n'
                '\n'
                '<h2>My First JavaScript</h2>\n'
                '\n'
                '<button type="button" onclick="document.getElementById(\'demo\').innerHTML = \'Hello JavaScript!\'">\n'
                'Click Me!\n'
                '</button>\n'
                '\n'
                '<p id="demo"></p>\n'
                '\n'
                '</body>\n'
                '</html>',
                'Click the button to display "Hello JavaScript!"',
                context,
              ),
              SizedBox(height: 20.0),

              // More Information section
              Text(
                'JavaScript Can Change HTML Content',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'One of many JavaScript HTML methods is getElementById().',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'This example uses the method to "find" an HTML element (with id="demo") and changes the element content (innerHTML) to "Hello JavaScript":',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                '<button type="button" onclick="document.getElementById(\'demo\').innerHTML = \'Hello JavaScript!\'">\n'
                'Click Me!\n'
                '</button>\n'
                '\n'
                '<p id="demo"></p>',
                'Click the button to display "Hello JavaScript!"',
                context,
              ),
              SizedBox(height: 20.0),

              // Heading for What You Should Already Know
              Text(
                'What You Should Already Know',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'Before you start studying JavaScript, you should have a basic understanding of the following:',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              // List of prerequisites
              _buildPrerequisitesList(),
              SizedBox(height: 20.0),

              // Section for JavaScript and Java
              Text(
                'JavaScript and Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'JavaScript and Java are completely different languages, both in concept and design.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              // Summary of the relationship between JavaScript and Java
              Text(
                'JavaScript was invented by Brendan Eich in 1995, and became an ECMA standard in 1997.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'ECMA-262 is the official name of the standard. ECMAScript is the official name of the language.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code, String description, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[850],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            code,
            style: TextStyle(
              fontFamily: 'Courier New',
              fontSize: 18,
              color: Colors.lightGreenAccent,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              _showOutput(context, description);
            },
            child: Text('Try it Yourself'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _showOutput(BuildContext context, String output) {
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

  Widget _buildPrerequisitesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1. HTML',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          '2. CSS',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
