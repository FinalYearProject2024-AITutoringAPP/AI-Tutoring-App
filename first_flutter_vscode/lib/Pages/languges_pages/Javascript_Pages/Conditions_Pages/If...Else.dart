import 'package:flutter/material.dart';

class JSIfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript if/else',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle('JavaScript if/else Statements'),
          _buildParagraph(
            'Conditional statements are used to perform different actions based on different conditions.',
          ),
          _buildSubSectionTitle('The if Statement'),
          _buildParagraph(
            'The if statement executes a block of code if a specified condition is true.',
          ),
          _buildCodeBlock(
            'if (condition) {\n'
            '  // block of code to be executed if the condition is true\n'
            '}',
          ),
          _buildSubSectionTitle('The else Statement'),
          _buildParagraph(
            'The else statement executes a block of code if the condition is false.',
          ),
          _buildCodeBlock(
            'if (condition) {\n'
            '  // block of code to be executed if the condition is true\n'
            '} else {\n'
            '  // block of code to be executed if the condition is false\n'
            '}',
          ),
          _buildSubSectionTitle('The else if Statement'),
          _buildParagraph(
            'The else if statement specifies a new condition to test if the first condition is false.',
          ),
          _buildCodeBlock(
            'if (condition1) {\n'
            '  // block of code to be executed if condition1 is true\n'
            '} else if (condition2) {\n'
            '  // block of code to be executed if condition1 is false and condition2 is true\n'
            '} else {\n'
            '  // block of code to be executed if both condition1 and condition2 are false\n'
            '}',
          ),
          _buildSectionTitle('JavaScript Conditions and Booleans'),
          _buildParagraph(
            'You can use conditional statements in your code to do this. In JavaScript we have the following conditional statements:\n'
            '- Use if to specify a block of code to be executed, if a specified condition is true\n'
            '- Use else to specify a block of code to be executed, if the same condition is false\n'
            '- Use else if to specify a new condition to test, if the first condition is false\n'
            '- Use switch to specify many alternative blocks of code to be executed',
          ),
          _buildSubSectionTitle('Comparison and Logical Operators'),
          _buildParagraph(
            'Comparison and logical operators are used to test for true or false.',
          ),
          _buildSubSectionTitle('Conditional (Ternary) Operator'),
          _buildParagraph(
            'The conditional operator assigns a value to a variable based on a condition.',
          ),
          _buildCodeBlock(
            'variablename = (condition) ? value1 : value2;',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      color: Colors.black87,
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 16.0,
          fontFamily: 'Courier',
        ),
      ),
    );
  }
}
