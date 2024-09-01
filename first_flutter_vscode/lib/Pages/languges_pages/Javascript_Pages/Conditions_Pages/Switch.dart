import 'package:flutter/material.dart';

class JSSwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Switch Statement',
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
          _buildSectionTitle('JavaScript Switch Statement'),
          _buildParagraph(
            'The switch statement is used to perform different actions based on different conditions.',
          ),
          _buildSubSectionTitle('The switch Statement'),
          _buildParagraph(
            'The switch expression is evaluated once. The value of the expression is compared with the values of each case. If there is a match, the associated block of code is executed. If there is no match, the default block of code is executed.',
          ),
          _buildCodeBlock(
            'switch(expression) {\n'
            '  case x:\n'
            '    // code block\n'
            '    break;\n'
            '  case y:\n'
            '    // code block\n'
            '    break;\n'
            '  default:\n'
            '    // code block\n'
            '}',
          ),
          _buildSubSectionTitle('The break Keyword'),
          _buildParagraph(
            'When JavaScript reaches a break keyword, it breaks out of the switch block. This will stop the execution inside the switch block. It is not necessary to break the last case in a switch block. The block breaks (ends) there anyway.',
          ),
          _buildSubSectionTitle('The default Keyword'),
          _buildParagraph(
            'The default keyword specifies the code to run if there is no case match. The default case does not have to be the last case in a switch block:',
          ),
          _buildCodeBlock(
            'switch(expression) {\n'
            '  case x:\n'
            '    // code block\n'
            '    break;\n'
            '  case y:\n'
            '    // code block\n'
            '    break;\n'
            '  default:\n'
            '    // code block\n'
            '}',
          ),
          _buildSubSectionTitle('Example: Displaying the Day of the Week'),
          _buildParagraph(
            'This example uses the switch statement to select one of many blocks of code to be executed. In this case, the switch statement compares the new Date().getDay() result with 0 through 6:',
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
            '}',
          ),
          _buildParagraph(
            'The break statements are used to prevent code from running into the next case automatically. Without break, the switch statement would execute all cases that follow the matched case.',
          ),
          _buildSubSectionTitle('Common Code Blocks'),
          _buildParagraph(
            'Sometimes, multiple cases may need to execute the same code. This can be done by omitting the break statement for those cases:',
          ),
          _buildCodeBlock(
            'switch (new Date().getDay()) {\n'
            '  case 4:\n'
            '  case 5:\n'
            '    text = "Soon it is Weekend";\n'
            '    break;\n'
            '  case 0:\n'
            '  case 6:\n'
            '    text = "It is Weekend";\n'
            '    break;\n'
            '  default:\n'
            '    text = "Looking forward to the Weekend";\n'
            '}',
          ),
          _buildParagraph(
            'In this example, both cases 4 and 5 will execute the same code block, as will cases 0 and 6.',
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
