import 'package:flutter/material.dart';

class JSObjectMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Object Methods',
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
            _buildHeading('JavaScript Object Methods'),
            _buildParagraph(
              'Objects in JavaScript can have methods. Methods are actions that can be performed on objects. A method is a function stored as a property.',
            ),
            _buildHeading('Object Methods'),
            _buildParagraph(
              'You define methods in an object the same way as you define properties. A method is a function, stored as a property.',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  id: 5566,\n'
              '  fullName: function() {\n'
              '    return this.firstName + " " + this.lastName;\n'
              '  }\n'
              '};\n\n'
              'console.log(person.fullName()); // Outputs "John Doe"',
            ),
            _buildHeading('Accessing Object Methods'),
            _buildParagraph(
              'You access an object method with the following syntax:',
            ),
            _buildCodeExample(
              'objectName.methodName()',
            ),
            _buildParagraph(
              'You will typically use parentheses () when you call the method. Without parentheses, the function is not executed.',
            ),
            _buildHeading('Adding a Method to an Object'),
            _buildParagraph(
              'You can add methods to an object the same way as you add properties:',
            ),
            _buildCodeExample(
              'person.age = function() {\n'
              '  return this.age;\n'
              '};',
            ),
            _buildHeading('Using "this" in Object Methods'),
            _buildParagraph(
              'In object methods, "this" refers to the "owner" of the method. In the example below, "this" refers to the person object.',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  id: 5566,\n'
              '  fullName: function() {\n'
              '    return this.firstName + " " + this.lastName;\n'
              '  }\n'
              '};\n\n'
              'console.log(person.fullName()); // Outputs "John Doe"',
            ),
            _buildParagraph(
              'If you access a method without the () parentheses, it will return the function definition:',
            ),
            _buildCodeExample(
              'console.log(person.fullName); // Outputs "function() { return this.firstName + " " + this.lastName; }"',
            ),
            _buildHeading('JavaScript Built-in Methods'),
            _buildParagraph(
              'JavaScript has many built-in methods such as toUpperCase(), toString(), toFixed(), and more. These can be applied to objects to manipulate their data.',
            ),
            _buildCodeExample(
              'let x = "Hello World";\n'
              'console.log(x.toUpperCase()); // Outputs "HELLO WORLD"',
            ),
            _buildHeading('Creating Your Own Methods'),
            _buildParagraph(
              'You can also define your own methods within an object, giving you the flexibility to encapsulate behavior related to that object.',
            ),
            _buildCodeExample(
              'const car = {\n'
              '  brand: "Ford",\n'
              '  model: "Mustang",\n'
              '  year: 1969,\n'
              '  start: function() {\n'
              '    console.log("Vroom vroom!");\n'
              '  }\n'
              '};\n\n'
              'car.start(); // Outputs "Vroom vroom!"',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      color: Colors.black,
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16.0,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
