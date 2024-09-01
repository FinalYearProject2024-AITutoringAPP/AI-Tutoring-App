import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Conditions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Data_types.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Errorhandling.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Modules.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Pythonpages/python_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PythonBasicsPage(),
  ));
}

class PythonBasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Python Basics',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
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
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: ListView(
        children: [
          _buildTopic(
            context,
            'Introduction to Python',
            'Learn about Python, its history, and its features.',
            PythonIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Basic Syntax',
            'Understand Python syntax, including variables, operators, and control structures.',
            PythonSyntaxPage(),
          ),
           _buildTopic(
            context,
            'Python Variables',
            'Learn how to define and use Variables in Python.',
            PythonVariablesPage(),
          ),
          _buildTopic(
            context,
            'Data Types',
            'Explore different data types in Python like strings, integers, and lists.',
            PythonDataTypesPage(),
          ),
          _buildTopic(
            context,
            'Conditions',
            'Learn about Conditions in Python.',
            PythonConditionsPage(),
          ),
          _buildTopic(
            context,
            'Functions',
            'Learn how to define and use functions in Python.',
            FunctionPage(),
          ),
          _buildTopic(
            context,
            'Modules and Packages',
            'Understand how to use modules and packages to organize code.',
            ModulesPage(),
          ),
          _buildTopic(
            context,
            'Error Handling',
            'Learn about handling errors and exceptions in Python.',
            ErrorHandlingPage(),
          ),
          // Add more topics as needed
        ],
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String title, String description, Widget? page) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.blueGrey[800], // Set card color to a darker shade of blue-grey
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70), // Set subtitle text color to a lighter shade of white
        ),
        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          } else {
            // Handle cases where there's no detailed page yet
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('This topic is not available yet!'),
            ));
          }
        },
      ),
    );
  }
}

class IntroductionToPythonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to Python'),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This is the Introduction to Python page.',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}

class BasicSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Syntax'),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This is the Basic Syntax page.',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
