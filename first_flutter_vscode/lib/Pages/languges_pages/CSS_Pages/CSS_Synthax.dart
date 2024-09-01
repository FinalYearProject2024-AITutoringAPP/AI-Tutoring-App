import 'package:flutter/material.dart';

class CSSSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Syntax',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'CSS Syntax',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'A CSS rule consists of a selector and a declaration block.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The Selector',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The selector points to the HTML element you want to style.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'h1 {\n'
                '  color: blue;\n'
                '  font-size: 12px;\n'
                '}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.greenAccent,
                  fontFamily: 'Courier',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The Declaration Block',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The declaration block contains one or more declarations separated by a semicolon.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Each declaration includes a CSS property name and a value, separated by a colon.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Example:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'color: blue;\n'
                'font-size: 12px;',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.greenAccent,
                  fontFamily: 'Courier',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CSS Comments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Comments are used to explain the code, and may help when you edit the source code at a later date. Comments are ignored by browsers.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'A CSS comment starts with /* and ends with */.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Text(
                '/* This is a comment */\n'
                'p {\n'
                '  color: red;\n'
                '}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.greenAccent,
                  fontFamily: 'Courier',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
