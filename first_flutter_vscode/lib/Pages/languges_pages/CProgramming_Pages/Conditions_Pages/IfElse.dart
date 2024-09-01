import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingIfElsePage());
}

class CProgrammingIfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C If...Else Statements',
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
              _buildSectionTitle('C If...Else Statements'),
              _buildSectionText(
                'C provides several conditional statements to control the flow of execution based on certain conditions.',
              ),
              _buildSectionText(
                'The most common conditional statements are:',
              ),
              _buildBulletPoint('if statement'),
              _buildBulletPoint('else statement'),
              _buildBulletPoint('else if statement'),
              _buildBulletPoint('shorthand if (ternary operator)'),

              SizedBox(height: 20.0),

              // If Statement
              _buildSectionTitle('The if Statement'),
              _buildSectionText(
                'The if statement is used to execute a block of code if a specified condition is true.',
              ),
              _buildCodeSnippet(
                '''if (condition) {
  // code to be executed if condition is true
}''',
              ),
              _buildSectionText(
                'Example:'),
              _buildCodeSnippet(
                '''int x = 10;
if (x > 5) {
  printf("x is greater than 5");
}''',
              ),
              _buildSectionText(
                'This will output "x is greater than 5" because the condition is true.'),

              SizedBox(height: 20.0),

              // Else Statement
              _buildSectionTitle('The else Statement'),
              _buildSectionText(
                'The else statement is used to execute a block of code if the condition in the if statement is false.',
              ),
              _buildCodeSnippet(
                '''if (condition) {
  // code to be executed if condition is true
} else {
  // code to be executed if condition is false
}''',
              ),
              _buildSectionText(
                'Example:'),
              _buildCodeSnippet(
                '''int x = 4;
if (x > 5) {
  printf("x is greater than 5");
} else {
  printf("x is not greater than 5");
}''',
              ),
              _buildSectionText(
                'This will output "x is not greater than 5" because the condition is false.'),

              SizedBox(height: 20.0),

              // Else If Statement
              _buildSectionTitle('The else if Statement'),
              _buildSectionText(
                'The else if statement is used to specify a new condition if the first condition is false.',
              ),
              _buildCodeSnippet(
                '''if (condition1) {
  // code to be executed if condition1 is true
} else if (condition2) {
  // code to be executed if condition2 is true
} else {
  // code to be executed if both conditions are false
}''',
              ),
              _buildSectionText(
                'Example:'),
              _buildCodeSnippet(
                '''int x = 4;
if (x > 5) {
  printf("x is greater than 5");
} else if (x == 4) {
  printf("x is equal to 4");
} else {
  printf("x is less than 4");
}''',
              ),
              _buildSectionText(
                'This will output "x is equal to 4" because the second condition is true.'),

              SizedBox(height: 20.0),

              // Shorthand if (ternary operator)
              _buildSectionTitle('Shorthand if...else (Ternary Operator)'),
              _buildSectionText(
                'C also offers a shorthand version of the if...else statement, known as the ternary operator.',
              ),
              _buildCodeSnippet(
                '''variable = (condition) ? expressionTrue : expressionFalse;''',
              ),
              _buildSectionText(
                'Example:'),
              _buildCodeSnippet(
                '''int time = 20;
string result = (time < 18) ? "Good day." : "Good evening.";
printf("%s", result);''',
              ),
              _buildSectionText(
                'This will output "Good evening." because the condition is false.'),

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

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: Row(
        children: [
          Icon(Icons.circle, size: 8, color: Colors.white70),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ),
        ],
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
