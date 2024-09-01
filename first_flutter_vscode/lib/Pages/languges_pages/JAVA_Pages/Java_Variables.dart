import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Variables_Comments_Pages/Comments.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Variables_Comments_Pages/Identifiers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Variables_Comments_Pages/Multiple_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Variables_Comments_Pages/Print_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Variables_Comments_Pages/Variables.dart';

void main() {
  runApp(JavaVariablesPage());
}

class JavaVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Variables and Comments',
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
                'Variables and Comments Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Variables', '', JAVAVariablesPage()),
              _buildTopic(context, 'Print Variables', '', JAVAPrintVariablesPage()),
              _buildTopic(context, 'Multiple Variables', '', JAVAMultipleVariablesPage()),
              _buildTopic(context, 'Identifiers', '', JAVAIdentifiersPage()),
              _buildTopic(context, 'Comments', '', JAVACommentPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, String description, Widget page) {
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
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
