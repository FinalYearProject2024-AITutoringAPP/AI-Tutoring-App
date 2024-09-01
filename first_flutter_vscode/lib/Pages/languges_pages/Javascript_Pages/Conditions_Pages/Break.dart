import 'package:flutter/material.dart';

class JSBreakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Break Statement',
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
          _buildSectionTitle('JavaScript Break Statement'),
          _buildParagraph(
            'The break statement "jumps out" of a loop or a switch.',
          ),
          _buildSubSectionTitle('The break Statement'),
          _buildParagraph(
            'You can use the break statement to terminate a loop, switch, or in conjunction with a label. When a break statement is encountered inside a loop, the loop is immediately terminated, and the program control resumes at the next statement following the loop.',
          ),
          _buildCodeBlock(
            'for (let i = 0; i < 10; i++) {\n'
            '  if (i === 3) {\n'
            '    break;\n'
            '  }\n'
            '  console.log(i);\n'
            '}',
          ),
          _buildParagraph(
            'The code above will output the numbers 0, 1, and 2. When `i` is equal to 3, the break statement will terminate the loop.',
          ),
          _buildSubSectionTitle('Break in a While Loop'),
          _buildParagraph(
            'The break statement can also be used with a while loop to terminate the loop when a certain condition is met.',
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
            'This while loop will terminate when `i` equals 3, similar to the for loop example above.',
          ),
          _buildSubSectionTitle('Break in a Switch Statement'),
          _buildParagraph(
            'The break statement is commonly used to terminate the execution of a case in a switch statement.',
          ),
          _buildCodeBlock(
            'switch (new Date().getDay()) {\n'
            '  case 0:\n'
            '    day = "Sunday";\n'
            '    break;\n'
            '  case 1:\n'
            '    day = "Monday";\n'
            '    break;\n'
            '  case 2:\n'
            '    day = "Tuesday";\n'
            '    break;\n'
            '  case 3:\n'
            '    day = "Wednesday";\n'
            '    break;\n'
            '  case 4:\n'
            '    day = "Thursday";\n'
            '    break;\n'
            '  case 5:\n'
            '    day = "Friday";\n'
            '    break;\n'
            '  case 6:\n'
            '    day = "Saturday";\n'
            '    break;\n'
            '  default:\n'
            '    day = "Unknown";\n'
            '}',
          ),
          _buildParagraph(
            'The break statement is used to exit the switch statement once a case has been matched and executed. Without the break, the program would continue to execute the following cases as well.',
          ),
          _buildSubSectionTitle('Break with Labels'),
          _buildParagraph(
            'The break statement can also be used with a label to break out of a block of code:',
          ),
          _buildCodeBlock(
            'outerLoop:\n'
            'for (let i = 0; i < 5; i++) {\n'
            '  for (let j = 0; j < 5; j++) {\n'
            '    if (j === 3) {\n'
            '      break outerLoop;\n'
            '    }\n'
            '    console.log("i = " + i + ", j = " + j);\n'
            '  }\n'
            '}',
          ),
          _buildParagraph(
            'In this example, the break statement will terminate both the inner and outer loop when `j` equals 3, thanks to the label `outerLoop`.',
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
