import 'package:flutter/material.dart';

void main() {
  runApp(JAVADataTypePage());
}

class JAVADataTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Data Types',
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
                'Java Data Types',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Data Type?',
                'In Java, a data type specifies the type of data that can be stored in a variable. Java has two types of data types: primitive and non-primitive.',
              ),
              _buildContent(
                context,
                'Primitive Data Types',
                'Java has eight primitive data types:',
              ),
              _buildBulletPoint(
                context,
                '1. byte: 8-bit integer',
              ),
              _buildBulletPoint(
                context,
                '2. short: 16-bit integer',
              ),
              _buildBulletPoint(
                context,
                '3. int: 32-bit integer',
              ),
              _buildBulletPoint(
                context,
                '4. long: 64-bit integer',
              ),
              _buildBulletPoint(
                context,
                '5. float: 32-bit floating point',
              ),
              _buildBulletPoint(
                context,
                '6. double: 64-bit floating point',
              ),
              _buildBulletPoint(
                context,
                '7. char: single 16-bit Unicode character',
              ),
              _buildBulletPoint(
                context,
                '8. boolean: true or false',
              ),
              _buildContent(
                context,
                'Non-Primitive Data Types',
                'Non-primitive data types include classes, interfaces, and arrays. They are used to store groups of data and are created by the programmer.',
              ),
              _buildContent(
                context,
                'Examples of Primitive Data Types:',
                'Here are some examples of using primitive data types in Java:',
              ),
              _buildCodeSnippet(
                context,
                'Example Code:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        int age = 30;\n'
                '        double salary = 50000.50;\n'
                '        char grade = \'A\';\n'
                '        boolean isEmployed = true;\n'
                '        System.out.println("Age: " + age);\n'
                '        System.out.println("Salary: " + salary);\n'
                '        System.out.println("Grade: " + grade);\n'
                '        System.out.println("Employed: " + isEmployed);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Data types in Java help you to define what kind of data you want to store. Primitive data types are basic types that are built into the language, while non-primitive types are more complex and are defined by the programmer.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 18, 
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildBulletPoint(BuildContext context, String bullet) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.brightness_1,
          size: 10,
          color: Colors.white,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            bullet,
            style: TextStyle(
              fontSize: 18, 
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCodeSnippet(BuildContext context, String title, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.black,
          child: Text(
            code,
            style: TextStyle(
              fontFamily: 'CourierNew',
              fontSize: 16,
              color: Colors.greenAccent,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
