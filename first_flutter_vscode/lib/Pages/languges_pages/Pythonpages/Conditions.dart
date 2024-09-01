import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Conditions_Pages/Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Conditions_Pages/For_Loops.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Conditions_Pages/If_Else.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Conditions_Pages/While_loops.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PythonConditionsPage());
}

class PythonConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Python Conditions',
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
                'Python Conditions Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'If....Else', '',IfElsePage()),
              _buildTopic(context, 'While Loops', '',WhileLoopPage() ),
              _buildTopic(context, 'For Loops', '',ForLoopPage() ),
              _buildTopic(context, 'Arrays', '',ArrayPage() ),
             
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
