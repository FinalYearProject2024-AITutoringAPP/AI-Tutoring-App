import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Variables_Comments.dart/Comments.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Variables_Comments.dart/Constants.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Variables_Comments.dart/Declare_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Variables_Comments.dart/Identifiers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Variables_Comments.dart/Multiple_Variables.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(CplusplusVariablesPage());
}

class CplusplusVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Variables and Comments',
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
                'Variable and Comments Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Declare Variables', 'Learn how to declare variables in C++', CPlusPlusDeclareVariablesPage()),
              _buildTopic(context, 'Multiple Variables', 'Learn how to declare multiple variables in C++', CPlusPlusMultipleVariablesPage()),
              _buildTopic(context, 'Identifiers', 'Understand identifiers in C++', CPlusPlusIdentifiersPage()),
              _buildTopic(context, 'Constants', 'Learn about constants in C++', CPlusPlusConstantsPage()),
              _buildTopic(context, 'Comments', 'Understand comments and their usage in C++', CPlusPlusCommentsPage()),
             
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
