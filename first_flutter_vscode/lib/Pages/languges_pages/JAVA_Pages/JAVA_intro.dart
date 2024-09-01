import 'package:flutter/material.dart';

class JavaIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to Java',
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
              'What is Java?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Java is a popular programming language, created in 1995.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'It is owned by Oracle, and more than 3 billion devices run Java.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'It is used for:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Mobile applications (specially Android apps)',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Web applications',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Web servers and application servers',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Games',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Database connection',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• And much, much more!',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Why Use Java?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '• Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• It is one of the most popular programming languages in the world',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• It is easy to learn and simple to use',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• It is open-source and free',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• It is secure, fast, and powerful',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• It has a huge community support (tens of millions of developers)',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• Java is an object-oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '• As Java is close to C++ and C#, it makes it easy for programmers to switch to Java or vice versa',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Java Example',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'To understand Java programming, you need to start with some basic code. Below is a simple Java program:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}''',
            ),
            SizedBox(height: 20.0),
            Text(
              'The code above will print "Hello, World!" to the screen.',
              style: TextStyle(fontSize: 18, color: Colors.white),
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
