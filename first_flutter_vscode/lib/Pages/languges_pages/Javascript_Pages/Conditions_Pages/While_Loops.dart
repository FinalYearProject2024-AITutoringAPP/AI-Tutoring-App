import 'package:flutter/material.dart';

class JSWhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript While Loop',
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
          _buildSectionTitle('JavaScript While Loop'),
          _buildParagraph(
            'Loops can execute a block of code as long as a specified condition is true.',
          ),
          _buildSubSectionTitle('The While Loop'),
          _buildParagraph(
            'The while loop loops through a block of code as long as a specified condition is true.',
          ),
          _buildCodeBlock(
            'while (condition) {\n'
            '  // code block to be executed\n'
            '}',
          ),
          _buildParagraph(
            'In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 10:',
          ),
          _buildCodeBlock(
            'let i = 0;\n'
            'while (i < 10) {\n'
            '  text += "The number is " + i;\n'
            '  i++;\n'
            '}',
          ),
          _buildSubSectionTitle('The Do/While Loop'),
          _buildParagraph(
            'The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.',
          ),
          _buildCodeBlock(
            'do {\n'
            '  // code block to be executed\n'
            '}\n'
            'while (condition);',
          ),
          _buildParagraph(
            'The example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:',
          ),
          _buildCodeBlock(
            'let i = 0;\n'
            'do {\n'
            '  text += "The number is " + i;\n'
            '  i++;\n'
            '}\n'
            'while (i < 10);',
          ),
          _buildSectionTitle('Break and Continue Statements'),
          _buildParagraph(
            'The break statement can be used to jump out of a loop.',
          ),
          _buildCodeBlock(
            'let i = 0;\n'
            'while (i < 10) {\n'
            '  if (i === 3) {\n'
            '    break;\n'
            '  }\n'
            '  i++;\n'
            '}',
          ),
          _buildParagraph(
            'The continue statement can be used to break one iteration in the loop, if a specified condition occurs, and continue with the next iteration in the loop.',
          ),
          _buildCodeBlock(
            'let i = 0;\n'
            'while (i < 10) {\n'
            '  if (i === 3) {\n'
            '    i++;\n'
            '    continue;\n'
            '  }\n'
            '  i++;\n'
            '}',
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
