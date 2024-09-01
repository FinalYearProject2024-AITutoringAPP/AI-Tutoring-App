import 'package:flutter/material.dart';

void main() {
  runApp(JAVAWhileLoopPage());
}

class JAVAWhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java While and Do...While Loops',
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
                'While and Do...While Loops in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a While Loop?',
                'The `while` loop in Java repeatedly executes a block of code as long as a specified condition is true. It is used when the number of iterations is not known beforehand.',
              ),
              _buildContent(
                context,
                'Syntax of While Loop',
                'The syntax of a `while` loop is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'while (condition) {\n'
                '  // code block\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of While Loop',
                'Here is an example of a `while` loop that prints numbers from 1 to 5:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'int i = 1;\n'
                'while (i <= 5) {\n'
                '  System.out.println(i);\n'
                '  i++;\n'
                '}\n',
              ),

              _buildContent(
                context,
                'What is a Do...While Loop?',
                'The `do...while` loop is similar to the `while` loop, but it guarantees that the code block will be executed at least once before the condition is tested.',
              ),
              _buildContent(
                context,
                'Syntax of Do...While Loop',
                'The syntax of a `do...while` loop is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'do {\n'
                '  // code block\n'
                '} while (condition);\n',
              ),
              _buildContent(
                context,
                'Example of Do...While Loop',
                'Here is an example of a `do...while` loop that prints numbers from 1 to 5:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'int i = 1;\n'
                'do {\n'
                '  System.out.println(i);\n'
                '  i++;\n'
                '} while (i <= 5);\n',
              ),

              _buildContent(
                context,
                'Key Differences Between While and Do...While',
                'Here are some key differences between `while` and `do...while` loops:',
              ),
              _buildBulletPoint(
                context,
                '1. The `while` loop checks the condition before executing the code block, while the `do...while` loop checks the condition after executing the code block.',
              ),
              _buildBulletPoint(
                context,
                '2. A `while` loop might not execute at all if the condition is false initially, whereas a `do...while` loop always executes at least once.',
              ),
              
              _buildContent(
                context,
                'Summary',
                'Both `while` and `do...while` loops are used for iteration in Java. Choose `while` when the number of iterations is unknown and you want to check the condition before executing the loop. Use `do...while` when you want to ensure that the loop executes at least once regardless of the condition.',
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
