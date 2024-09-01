import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingSwitchPage());
}

class CProgrammingSwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Switch Statements',
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
              // Introduction
              _buildSectionTitle('C Switch Statements'),
              _buildSectionText(
                'The switch statement is used to select one of many code blocks to be executed.',
              ),
              
              _buildSectionText(
                'The syntax of the switch statement is as follows:',
              ),
              _buildCodeSnippet(
                '''switch (expression) {
  case value1:
    // code to be executed if expression is equal to value1
    break;
  case value2:
    // code to be executed if expression is equal to value2
    break;
  ...
  default:
    // code to be executed if expression does not match any case
}''',
              ),

              SizedBox(height: 20.0),

              // How It Works
              _buildSectionTitle('How It Works'),
              _buildSectionText(
                'The expression is evaluated once and compared with the values of each case. If there is a match, the associated code block is executed. If there is no match, the default code block is executed.',
              ),
              _buildSectionText(
                'When C reaches a break keyword, it breaks out of the switch block. This will stop the execution of more code and case testing inside the block.',
              ),
              _buildSectionText(
                'The default keyword specifies some code to run if there is no case match. The default keyword is optional.',
              ),

              SizedBox(height: 20.0),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionText('Consider the following example:'),
              _buildCodeSnippet(
                '''int day = 4;
switch (day) {
  case 1:
    printf("Monday");
    break;
  case 2:
    printf("Tuesday");
    break;
  case 3:
    printf("Wednesday");
    break;
  case 4:
    printf("Thursday");
    break;
  case 5:
    printf("Friday");
    break;
  case 6:
    printf("Saturday");
    break;
  case 7:
    printf("Sunday");
    break;
  default:
    printf("Invalid day");
}''',
              ),
              _buildSectionText(
                'This example will output "Thursday" since the value of the variable day is 4.'),

              SizedBox(height: 20.0),

              // Default Case
              _buildSectionTitle('The default Keyword'),
              _buildSectionText(
                'The default case is optional, but it can be useful for handling unexpected values.',
              ),
              _buildCodeSnippet(
                '''int day = 8;
switch (day) {
  case 1:
    printf("Monday");
    break;
  case 2:
    printf("Tuesday");
    break;
  case 3:
    printf("Wednesday");
    break;
  case 4:
    printf("Thursday");
    break;
  case 5:
    printf("Friday");
    break;
  case 6:
    printf("Saturday");
    break;
  case 7:
    printf("Sunday");
    break;
  default:
    printf("Invalid day");
}''',
              ),
              _buildSectionText(
                'This example will output "Invalid day" since the value of the variable day is not between 1 and 7.'),

              SizedBox(height: 20.0),

              // Multiple Cases
              _buildSectionTitle('Multiple Cases'),
              _buildSectionText(
                'You can also group multiple cases together if they should result in the same output.',
              ),
              _buildCodeSnippet(
                '''int day = 3;
switch (day) {
  case 1:
  case 2:
  case 3:
    printf("It is a weekday");
    break;
  case 4:
  case 5:
  case 6:
  case 7:
    printf("It is a weekend");
    break;
  default:
    printf("Invalid day");
}''',
              ),
              _buildSectionText(
                'This example will output "It is a weekday" because day is 3, which falls under the first group of cases.'),

              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper methods for building sections
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black,
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
