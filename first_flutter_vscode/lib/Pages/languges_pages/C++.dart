import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Classes_and%20_OOP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Conditions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Data_Types.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_User_Input.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_output.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/C++_variables.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Intro_C++.dart';
import 'package:flutter/material.dart';

class CPlusPlusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Basics',
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
            'Introduction to C++',
            'Learn about C++, its history, and its features.',
            CPlusPlusIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Basic Syntax',
            'Understand C++ syntax, including variables, operators, and control structures.',
            CPlusPlusSyntaxPage(),
          ),
          _buildTopic(
            context,
            'C++ Output',
            'Learn about C++ Output',
            CPlusPlusOutputPage(),
          ),
          _buildTopic(
            context,
            'C++ Variables and Comments',
            'Learn about C++ Variables and Comments',
            CplusplusVariablesPage(),
          ),
          _buildTopic(
            context,
            'C++ User Input',
            'Understand C++ User Input',
            CPlusPlusUserInputPage(),
          ),
          _buildTopic(
            context,
            'C++ Data Types',
            'Learn about C++ Data Types',
            CplusplusDataTypesPage(),
          ),
          _buildTopic(
            context,
            'C++ Conditions',
            'Learn about C++ Conditions',
            CplusplusConditionsPage(),
          ),
          _buildTopic(
            context,
            'C++ Functions',
            'Learn about C++ Functions.',
            CplusplusFunctionsPage(),
          ),
          _buildTopic(
            context,
            'Classes and Object-Oriented Programming',
            'Explore object-oriented concepts like classes and inheritance.',
            CplusplusClassesPage(),
          ),
          _buildTopic(
            context,
            'C++ Arrays',
            'Learn how to use arrays in C++.',
            CplusplusArraysPage(),
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
