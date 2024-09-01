import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/Break.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/Continue.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/Do_While.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/For_Loop.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/Foreach_Loop.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/Loop_s.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops_Pages/While_Loop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PHPLoopsPage());
}

class PHPLoopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Loops',
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
                'PHP Loops Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Loops', '', PHPLoopPage()),
              _buildTopic(context, 'While Loop', '', PHPWhileLoopPage()),
              _buildTopic(context, 'Do While Loop', '', PHPDoWhileLoopPage()),
              _buildTopic(context, 'For Loop', '', PHPForLoopPage()),
              _buildTopic(context, 'Foreach Loop', '', PHPForeachLoopPage()),
              _buildTopic(context, 'Break', '', PHPBreakPage()),
              _buildTopic(context, 'Continue', '', PHPContinuePage()),
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
