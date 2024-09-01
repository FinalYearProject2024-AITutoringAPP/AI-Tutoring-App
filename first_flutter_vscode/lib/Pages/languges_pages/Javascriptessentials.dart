import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Intro_Javascript.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Conditions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_DOM.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Datatypes.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Error_handling.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_ObjectsandArrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/JS_Variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Javascript_output.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Javascript_statements.dart';

class JavaScriptEssentialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Essentials',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: ListView(
        children: [
          _buildTopic(
            context,
            'Introduction to JavaScript',
            'Learn about JavaScript, its history, and its features.',
            JavaScriptIntroductionPage(),
          ),
          _buildTopic(
            context,
            'JavaScript Output',
            'Learn about JavaScript Output',
            JavaScriptOutputPage(),
          ),
          _buildTopic(
            context,
            'JavaScript Statements',
            'Learn about JavaScript Statements',
            JavaScriptStatementsPage(),
          ),
          _buildTopic(
            context,
            'Basic Syntax',
            'Understand JavaScript syntax, including variables, operators, and control structures.',
            JavaScriptSyntaxPage(),
          ),
          _buildTopic(
            context,
            'JS Data Types',
            'Learn about data types in JavaScript like strings, integers, and lists.',
            JavaScriptDataTypesPage(),
          ),
          _buildTopic(
            context,
            'Variables',
            'Learn about Variables in JavaScript',
            JavaScriptVariablesPage(),
          ),
          _buildTopic(
            context,
            'JS Conditions',
            'Learn about conditions in JavaScript',
            JavascriptConditionsPage(),
          ),
          _buildTopic(
            context,
            'Functions',
            'Learn how to define and use functions in JavaScript.',
            JavaScriptFunctionsPage(),
          ),
          _buildTopic(
            context,
            'Objects and Arrays',
            'Explore JavaScript objects and arrays, and how to use them.',
            JavascriptObjectsandArraysPage(),
          ),
          _buildTopic(
            context,
            'DOM Manipulation',
            'Learn how to manipulate the DOM with JavaScript.',
            JavascriptDOMPage(),
          ),
          _buildTopic(
            context,
            'Error Handling',
            'Learn about handling errors and exceptions in JavaScript.',
            JavaScriptErrorHandlingPage(),
          ),
         
        ],
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String title, String description, Widget page) {
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
