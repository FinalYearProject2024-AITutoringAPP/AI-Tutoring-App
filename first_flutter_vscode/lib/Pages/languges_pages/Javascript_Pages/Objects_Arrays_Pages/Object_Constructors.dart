import 'package:flutter/material.dart';

class JSObjectConstructorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Object Constructors',
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
            _buildHeading('JavaScript Object Constructors'),
            _buildParagraph(
              'In JavaScript, you can create objects using constructors. A constructor is a special function that is used to initialize objects. There are two ways to create objects using constructors: with a constructor function and with the `class` syntax.',
            ),
            _buildHeading('Using a Constructor Function'),
            _buildParagraph(
              'You can define a constructor function and use it to create objects. The constructor function is a regular function that is used to create and initialize objects. Here is an example:',
            ),
            _buildCodeExample(
              'function Person(firstName, lastName, age) {\n'
              '  this.firstName = firstName;\n'
              '  this.lastName = lastName;\n'
              '  this.age = age;\n'
              '}\n\n'
              'const person1 = new Person("John", "Doe", 50);\n'
              'const person2 = new Person("Jane", "Doe", 40);\n\n'
              'console.log(person1);\n' // Outputs: Person {firstName: "John", lastName: "Doe", age: 50}
              'console.log(person2);\n' // Outputs: Person {firstName: "Jane", lastName: "Doe", age: 40}
            ),
            _buildHeading('Using the `class` Syntax'),
            _buildParagraph(
              'ES6 introduced a new syntax for creating objects called `class`. This syntax is more similar to other object-oriented languages and can be used to create objects in a more modern way. Here is an example:',
            ),
            _buildCodeExample(
              'class Person {\n'
              '  constructor(firstName, lastName, age) {\n'
              '    this.firstName = firstName;\n'
              '    this.lastName = lastName;\n'
              '    this.age = age;\n'
              '  }\n'
              '}\n\n'
              'const person1 = new Person("John", "Doe", 50);\n'
              'const person2 = new Person("Jane", "Doe", 40);\n\n'
              'console.log(person1);\n' // Outputs: Person {firstName: "John", lastName: "Doe", age: 50}
              'console.log(person2);\n' // Outputs: Person {firstName: "Jane", lastName: "Doe", age: 40}
            ),
            _buildHeading('Constructor Inheritance'),
            _buildParagraph(
              'In JavaScript, you can use inheritance to create a new class that inherits properties and methods from another class. This allows for more flexible and reusable code. Here is an example of inheritance with classes:',
            ),
            _buildCodeExample(
              'class Person {\n'
              '  constructor(firstName, lastName, age) {\n'
              '    this.firstName = firstName;\n'
              '    this.lastName = lastName;\n'
              '    this.age = age;\n'
              '  }\n'
              '}\n\n'
              'class Student extends Person {\n'
              '  constructor(firstName, lastName, age, studentID) {\n'
              '    super(firstName, lastName, age);\n'
              '    this.studentID = studentID;\n'
              '  }\n'
              '}\n\n'
              'const student1 = new Student("John", "Doe", 22, "S12345");\n\n'
              'console.log(student1);\n' // Outputs: Student {firstName: "John", lastName: "Doe", age: 22, studentID: "S12345"}
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
