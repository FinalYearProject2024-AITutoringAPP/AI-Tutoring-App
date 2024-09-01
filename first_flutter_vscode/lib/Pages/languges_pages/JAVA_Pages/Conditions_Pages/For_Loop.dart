import 'package:flutter/material.dart';

void main() {
  runApp(JAVAForLoopPage());
}

class JAVAForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java For Loops',
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
                'For Loops in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a For Loop?',
                'The `for` loop is used to execute a block of code repeatedly for a fixed number of times. It is typically used when the number of iterations is known beforehand.',
              ),
              _buildContent(
                context,
                'Syntax of For Loop',
                'The syntax of a `for` loop is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (initialization; condition; update) {\n'
                '  // code block\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of For Loop',
                'Here is an example of a `for` loop that prints numbers from 1 to 5:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 1; i <= 5; i++) {\n'
                '  System.out.println(i);\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Nested For Loops',
                'A nested `for` loop is a `for` loop inside another `for` loop. It is used for iterating over multi-dimensional arrays or for creating patterns.',
              ),
              _buildContent(
                context,
                'Syntax of Nested For Loops',
                'The syntax of a nested `for` loop is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (initialization1; condition1; update1) {\n'
                '  for (initialization2; condition2; update2) {\n'
                '    // code block\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of Nested For Loops',
                'Here is an example of a nested `for` loop that prints a multiplication table:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 1; i <= 3; i++) {\n'
                '  for (int j = 1; j <= 3; j++) {\n'
                '    System.out.print(i * j + " ");\n'
                '  }\n'
                '  System.out.println();\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Enhanced For Loop (For-Each Loop)',
                'The enhanced `for` loop, or `for-each` loop, is used to iterate over arrays or collections in a more readable manner. It simplifies the iteration by removing the need for index variables.',
              ),
              _buildContent(
                context,
                'Syntax of Enhanced For Loop',
                'The syntax of the enhanced `for` loop is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (type element : array) {\n'
                '  // code block\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of Enhanced For Loop',
                'Here is an example of an enhanced `for` loop that iterates over an array of integers and prints each element:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'int[] numbers = {1, 2, 3, 4, 5};\n'
                'for (int num : numbers) {\n'
                '  System.out.println(num);\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Summary',
                'The `for` loop is a powerful tool for iteration in Java. Use the basic `for` loop for fixed iteration, nested `for` loops for multi-dimensional data or patterns, and the enhanced `for` loop for simplified iteration over arrays or collections.',
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
