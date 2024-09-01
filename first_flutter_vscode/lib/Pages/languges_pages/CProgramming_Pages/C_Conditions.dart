import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Conditions_Pages/Break_Continue.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Conditions_Pages/For_Loop.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Conditions_Pages/IfElse.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Conditions_Pages/Switch.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Conditions_Pages/While_Loop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CConditionsPage());
}

class CConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Conditions',
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
                'C Conditions Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(
                context, 
                'If...Else', 
                'Learn how to use if, else, and else if statements for decision-making.', 
                CProgrammingIfElsePage()
              ),
              _buildTopic(
                context, 
                'Switch', 
                'Understand how to use the switch statement for multiple conditions.', 
                CProgrammingSwitchPage()
              ),
              _buildTopic(
                context, 
                'While Loop', 
                'Explore the while loop for repeating a block of code as long as a condition is true.', 
                CProgrammingWhileLoopPage()
              ),
              _buildTopic(
                context, 
                'For Loop', 
                'Learn about the for loop for iterating a block of code a specific number of times.', 
                CProgrammingForLoopPage()
              ),
              _buildTopic(
                context, 
                'Break/Continue', 
                'Discover how to use break and continue statements to control loop execution.', 
                CProgrammingBreakContinuePage()
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, String description, Widget nextPage) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
      ),
    );
  }
}
