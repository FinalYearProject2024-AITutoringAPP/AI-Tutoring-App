import 'package:flutter/material.dart';

class JavaScriptDataTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Data Types',
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
              'JavaScript Data Types',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'JavaScript variables can hold different data types: numbers, strings, objects, and more:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let length = 16;                               // Number
let lastName = "Johnson";                      // String
let x = {firstName:"John", lastName:"Doe"};    // Object''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Types are Dynamic'),
            Text(
              'JavaScript is a dynamically typed language. This means that the same variable can hold different types:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let x;       // Now x is undefined
x = 5;       // Now x is a Number
x = "John";  // Now x is a String''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Strings'),
            Text(
              'A string (or a text string) is a series of characters like "John Doe".',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let carName = "Volvo XC60";  // Using double quotes
let carName = 'Volvo XC60';  // Using single quotes''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Numbers'),
            Text(
              'JavaScript has only one type of number. Numbers can be written with or without decimals:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let x1 = 34.00;  // Written with decimals
let x2 = 34;     // Written without decimals''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('Extra Large or Extra Small Numbers'),
            Text(
              'Numbers can also be written in scientific (exponential) notation:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let y = 123e5;    // 12300000
let z = 123e-5;   // 0.00123''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Booleans'),
            Text(
              'Booleans can only have two values: true or false.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
let x = 5;
let y = 5;
let z = 6;
(x == y)       // Returns true
(x == z)       // Returns false''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Arrays'),
            Text(
              'JavaScript arrays are written with square brackets.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
const cars = ["Saab", "Volvo", "BMW"];''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('JavaScript Objects'),
            Text(
              'JavaScript objects are written with curly braces {}.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
const person = {
  firstName: "John",
  lastName: "Doe",
  age: 50,
  eyeColor: "blue"
};''',
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
}
