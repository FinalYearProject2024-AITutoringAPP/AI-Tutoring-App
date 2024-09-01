import 'package:flutter/material.dart';

class JavaSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Java Syntax',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Java Syntax',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'In Java, every application begins with a class name, and that class must match the filename.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Let\'s start with a simple Java program. The code below outputs "Hello World" to the screen:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}''',
            ),
            SizedBox(height: 20.0),
            Text(
              'The "public static void main(String[] args)" line is the entry point of any Java program. The program starts running from the main method.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'System.out.println("Hello World"); is used to print text to the screen in Java.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Java Identifiers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'All Java variables must be identified with unique names. These unique names are called identifiers.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Identifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'The general rules for constructing names for variables (unique identifiers) are:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Names can contain letters, digits, underscores, and dollar signs',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Names must begin with a letter',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Names should start with a lowercase letter and it cannot contain whitespace',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Names are case-sensitive ("myVar" and "myvar" are different variables)',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Names cannot be any of the Java reserved words (like int, boolean, etc.)',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Java Comments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Single-line comments start with two forward slashes (//).',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
// This is a comment
System.out.println("Hello World");''',
            ),
            SizedBox(height: 20.0),
            Text(
              'Multi-line comments start with /* and end with */.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
/* The code below will print Hello World
to the screen, and it is amazing */
System.out.println("Hello World");''',
            ),
            SizedBox(height: 20.0),
          ],
        ),
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
