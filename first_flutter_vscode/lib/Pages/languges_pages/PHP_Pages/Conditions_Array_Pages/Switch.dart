import 'package:flutter/material.dart';

void main() {
  runApp(PHP_Switch_Page());
}

class PHP_Switch_Page extends StatelessWidget {
  get day => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Switch Statement',
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
                'PHP Switch Statement',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Overview
              _buildSection(
                context,
                'Overview',
                'The `switch` statement is used to perform different actions based on different conditions. It is an alternative to using multiple `if...else` statements.',
                '',
              ),

              SizedBox(height: 20.0),

              // Basic Switch Statement
              _buildSection(
                context,
                'Basic Switch Statement',
                'The basic syntax of the switch statement. The switch statement evaluates the expression and executes the code block of the matching case.',
                '''
<?php
$day = 3;
switch ($day) {
    case 1:
        echo "Monday";
        break;
    case 2:
        echo "Tuesday";
        break;
    case 3:
        echo "Wednesday";
        break;
    case 4:
        echo "Thursday";
        break;
    case 5:
        echo "Friday";
        break;
    case 6:
        echo "Saturday";
        break;
    case 7:
        echo "Sunday";
        break;
    default:
        echo "Invalid day";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Multiple Case Statements
              _buildSection(
                context,
                'Multiple Case Statements',
                'You can group multiple case statements together to perform the same action.',
                '''
<?php
$day = 6;
switch ($day) {
    case 1:
    case 2:
    case 3:
        echo "Weekday";
        break;
    case 4:
    case 5:
        echo "Weekend";
        break;
    default:
        echo "Invalid day";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Switch Statement without Break
              _buildSection(
                context,
                'Switch Statement without Break',
                'If you do not use a break statement, the code will continue executing into the next case until a break is encountered.',
                '''
<?php
$day = 3;
switch ($day) {
    case 1:
        echo "Monday";
    case 2:
        echo "Tuesday";
    case 3:
        echo "Wednesday";
    case 4:
        echo "Thursday";
    case 5:
        echo "Friday";
    case 6:
        echo "Saturday";
    case 7:
        echo "Sunday";
    default:
        echo "Invalid day";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Default Case
              _buildSection(
                context,
                'Default Case',
                'The default case is executed if no cases match the switch expression.',
                '''
<?php
$day = 8;
switch ($day) {
    case 1:
        echo "Monday";
        break;
    case 2:
        echo "Tuesday";
        break;
    case 3:
        echo "Wednesday";
        break;
    default:
        echo "Invalid day";
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
