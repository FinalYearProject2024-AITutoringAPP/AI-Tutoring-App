import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Conditions_Pages/Break.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Conditions_Pages/For_Loops.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Conditions_Pages/If...Else.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Conditions_Pages/Switch.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Conditions_Pages/While_Loops.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(JavascriptConditionsPage());
}

class JavascriptConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Javascript Conditions',
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
                'Javascript Conditions Topics',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'If...Else', '', JSIfElsePage()),
              _buildTopic(context, 'While Loops', '', JSWhileLoopPage()),
              _buildTopic(context, 'For Loops', '', JSForLoopPage()),
              _buildTopic(context, 'Switch', '', JSSwitchPage()),
              _buildTopic(context, 'Break', '', JSBreakPage()),
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
