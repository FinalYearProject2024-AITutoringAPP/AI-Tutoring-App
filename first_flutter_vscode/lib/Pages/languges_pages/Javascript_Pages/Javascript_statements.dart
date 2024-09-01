import 'package:flutter/material.dart';

class JavaScriptStatementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Statements',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Background color of the page
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'JavaScript Statements',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'JavaScript statements are composed of:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildBulletPoint('Values, Operators, Expressions, Keywords, and Comments.'),
            SizedBox(height: 20.0),
            _buildSectionTitle('Example'),
            _buildCodeExample(
              '''
var x, y, z;    // Declare 3 variables
x = 5;          // Assign the value 5 to x
y = 6;          // Assign the value 6 to y
z = x + y;      // Assign the sum of x and y to z
document.getElementById("demo").innerHTML =
"The value of z is " + z + ".";''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('Semicolons ;'),
            Text(
              'Semicolons separate JavaScript statements.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
var a, b, c;  // Declare 3 variables
a = 10;       // Assign the value 10 to a
b = 20;       // Assign the value 20 to b
c = a + b;    // Assign the sum of a and b to c''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Code'),
            Text(
              'JavaScript code is a sequence of statements.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Keywords'),
            Text(
              'JavaScript statements often start with a keyword to identify the action to be performed.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
var x = 5;      // Declare and assign a variable
let y = 6;      // Declare and assign a block-scoped variable
const z = 7;    // Declare and assign a constant variable''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Comments'),
            Text(
              'Comments can be added to explain the code:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
// This is a single line comment

/*
  This is a multi-line comment
  that spans multiple lines
*/''',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[850],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 16,
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
