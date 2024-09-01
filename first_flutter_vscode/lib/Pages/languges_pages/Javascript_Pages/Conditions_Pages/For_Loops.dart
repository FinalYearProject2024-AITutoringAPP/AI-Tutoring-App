import 'package:flutter/material.dart';

class JSForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript For Loop',
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
          _buildSectionTitle('JavaScript For Loop'),
          _buildParagraph(
            'Loops can execute a block of code a number of times.',
          ),
          _buildSubSectionTitle('The For Loop'),
          _buildParagraph(
            'The for loop has the following syntax:',
          ),
          _buildCodeBlock(
            'for (statement 1; statement 2; statement 3) {\n'
            '  // code block to be executed\n'
            '}',
          ),
          _buildParagraph(
            'Statement 1 is executed (one time) before the execution of the code block.\n'
            'Statement 2 defines the condition for executing the code block.\n'
            'Statement 3 is executed (every time) after the code block has been executed.',
          ),
          _buildParagraph(
            'The example below demonstrates a for loop that will loop through a block of code five times:',
          ),
          _buildCodeBlock(
            'for (let i = 0; i < 5; i++) {\n'
            '  text += "The number is " + i + "<br>";\n'
            '}',
          ),
          _buildSubSectionTitle('Different Kinds of For Loops'),
          _buildParagraph(
            'There are different types of for loops in JavaScript:',
          ),
          _buildBulletPoint('for - loops through a block of code a number of times.'),
          _buildBulletPoint('for/in - loops through the properties of an object.'),
          _buildBulletPoint('for/of - loops through the values of an iterable object.'),
          _buildParagraph(
            'The for/in loop iterates over the properties of an object:',
          ),
          _buildCodeBlock(
            'const person = {fname:"John", lname:"Doe", age:25};\n'
            'let text = "";\n'
            'for (let x in person) {\n'
            '  text += person[x];\n'
            '}',
          ),
          _buildParagraph(
            'The for/of loop iterates over the values of an iterable object, such as an array:',
          ),
          _buildCodeBlock(
            'const cars = ["BMW", "Volvo", "Mini"];\n'
            'let text = "";\n'
            'for (let x of cars) {\n'
            '  text += x + "<br>";\n'
            '}',
          ),
          _buildSubSectionTitle('Loop Scope'),
          _buildParagraph(
            'Using var in a loop creates a function-scoped or globally-scoped variable, '
            'while using let creates a block-scoped variable. In the following example, '
            'the final value of i is logged after the loop has finished:',
          ),
          _buildCodeBlock(
            'for (var i = 0; i < 10; i++) {\n'
            '  // some code\n'
            '}\n'
            'console.log(i);  // 10',
          ),
          _buildParagraph(
            'With let, the variable i is only available inside the block:',
          ),
          _buildCodeBlock(
            'for (let i = 0; i < 10; i++) {\n'
            '  // some code\n'
            '}\n'
            'console.log(i);  // ReferenceError: i is not defined',
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

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
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
