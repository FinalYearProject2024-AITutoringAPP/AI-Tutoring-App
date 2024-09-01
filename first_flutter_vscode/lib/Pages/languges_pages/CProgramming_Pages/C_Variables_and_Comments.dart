import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Change_Values.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Comments.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Create_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Format_Specifiers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Multiple_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Variables_Comments_Pages/Variable_Names.dart';

void main() {
  runApp(CVariablesPage());
}

class CVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Variables and Comments',
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
                'C Variables and Comments Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Create Variables', 'Learn how to create variables in C', CProgrammingCreateVariablesPage()),
              _buildTopic(context, 'Format Specifiers', 'Understand format specifiers for output', CProgrammingFormatSpecifiersPage()),
              _buildTopic(context, 'Change Values', 'Change the values of variables', CProgrammingChangeValuesPage()),
              _buildTopic(context, 'Multiple Variables', 'Declare and use multiple variables', CProgrammingMultipleVariablesPage()),
              _buildTopic(context, 'Variable Names', 'Rules and guidelines for naming variables', CProgrammingVariableNamesPage()),
              _buildTopic(context, 'Comments', 'Learn how to use comments in C programming', CProgrammingCommentsPage()),
             
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
