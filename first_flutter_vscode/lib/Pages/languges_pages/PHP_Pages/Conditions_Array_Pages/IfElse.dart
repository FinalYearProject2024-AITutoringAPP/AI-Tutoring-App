import 'package:flutter/material.dart';

void main() {
  runApp(PHPIfElseCombinedPage());
}

class PHPIfElseCombinedPage extends StatelessWidget {
  get age => null;
  
  get time => null;
  
  get isStudent => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP If...Else Concepts',
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
                'PHP If...Else Concepts',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Basic If...Else Statement
              _buildSection(
                context,
                'PHP If...Else Statement',
                'The if statement executes some code if one condition is true, and the else statement executes code if the condition is false.',
                '''
<?php
$time = 20;
if ($time < 10) {
    echo "Good morning";
} else {
    echo "Good evening";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // If...Else If...Else Statement
              _buildSection(
                context,
                'PHP If...Else If...Else Statement',
                'The else if statement allows you to test multiple conditions.',
                '''
<?php
$age = 20;
if ($age < 13) {
    echo "You are a child.";
} elseif ($age < 20) {
    echo "You are a teenager.";
} else {
    echo "You are an adult.";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // If Shorthand (Ternary Operator)
              _buildSection(
                context,
                'PHP If Shorthand (Ternary Operator)',
                'The ternary operator allows for a shorter syntax for `if...else` statements.',
                '''
<?php
$isStudent = true;
echo $isStudent ? "You are a student." : "You are not a student.";
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Nested If...Else Statements
              _buildSection(
                context,
                'PHP Nested If...Else Statements',
                'Nested if statements are used to handle more complex conditions.',
                '''
<?php
$age = 20;
if ($age > 18) {
    if ($age > 21) {
        echo "You are over 21.";
    } else {
        echo "You are between 19 and 21.";
    }
} else {
    echo "You are 18 or younger.";
}
?>
                ''',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String description, String code) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Code:',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.black,
            child: Text(
              code,
              style: TextStyle(
                color: Colors.greenAccent,
                fontFamily: 'Courier New',
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
