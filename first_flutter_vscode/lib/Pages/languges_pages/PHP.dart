import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Casting_Math_Constants.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Classes_Objects.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Conditions_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Data_Types.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Echo_Print.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Exception_Handling.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Forms.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Sessions_Cookies.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/PHP_Variables_Comments.dart';

class PHPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Basics',
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
            'Introduction to PHP',
            'Learn about PHP, its history, and its features.',
            PHPIntroductionPage(),
          ),
          _buildTopic(
            context,
            'PHP Syntax',
            'Understand PHP syntax, including variables, operators, and control structures.',
            PHPSyntaxPage(),
          ),
          _buildTopic(
            context,
            'Variables and Comments',
            'Learn about PHP Variables and Comments',
            PHPVariablesCommentsPage(),
          ),
          _buildTopic(
            context,
            'PHP Echo/Print',
            'Learn about PHP Echo and Print statements',
            PHPEchoPrintPage(),
          ),
          _buildTopic(
            context,
            'PHP Data Types and Strings',
            'Learn about PHP Data Types and Strings',
            PHPDataTypesStringsPage(),
          ),
          _buildTopic(
            context,
            'PHP Casting, Math and Constants',
            'Learn about PHP Casting, Math and Constants',
            PHPCastingMathConstantsPage(),
          ),
          _buildTopic(
            context,
            'Conditions and Arrays',
            'Learn about PHP Conditions and Arrays',
            PHPConditionsArraysPage(),
          ),
          _buildTopic(
            context,
            'Functions',
            'Learn how to define and use functions in PHP.',
            PHPFunctionsPage(),
          ),
          _buildTopic(
            context,
            'Working with Forms',
            'Explore how to handle forms and user input in PHP.',
            PHPFormsPage(),
          ),
          _buildTopic(
            context,
            'Sessions and Cookies',
            'Learn about sessions and cookies for state management.',
            PHPSessionsCookiesPage(),
          ),
          _buildTopic(
            context,
            'PHP Classes/Objects, Constructor and OOP',
            'Learn about PHP Classes/Objects, Constructor and OOP',
            PHPClassesObjectsConstructorOOPPage(),
          ),
          _buildTopic(
            context,
            'Exception Handling',
            'Learn about handling errors and exceptions in PHP.',
            PHPExceptionHandlingPage(),
          ),
          // Add more topics as needed
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}

