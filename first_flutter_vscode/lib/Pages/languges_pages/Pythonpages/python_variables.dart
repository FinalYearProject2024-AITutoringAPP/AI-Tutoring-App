import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Varables_pages/Assign_multiple_values.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Varables_pages/Global_variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Varables_pages/Output_variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Varables_pages/Variable_names';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Varables_pages/Variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PythonVariablesPage());
}

class PythonVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Python Variables',
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
                'Python Variables Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Variables', 'Introduction to variables in Python', VariablesPage()),
              _buildTopic(context, 'Variable Names', 'Rules and conventions for naming variables', VariableNamesPage()),
              _buildTopic(context, 'Assign Multiple Values', 'How to assign multiple values in Python', AssignMultipleValuesPage()),
              _buildTopic(context, 'Output Variables', 'How to print variables in Python', OutputVariablesPage()),
              _buildTopic(context, 'Global Variables', 'Understanding global variables in Python',GlobalVariablesPage() ),
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


