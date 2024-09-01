import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Arrays_and_Strings.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Conditions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Data_Types.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_File.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Output.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Pointers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_User_Input.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/C_Variables_and_Comments.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Intro_C.dart';
import 'package:flutter/material.dart';
class CProgrammingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C Programming',
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
            'Introduction to C',
            'Learn about C programming, its history, and its features.',
            CIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Basic Syntax',
            'Understand C syntax, including variables, operators, and control structures.',
            CSyntaxPage(),
          ),
          _buildTopic(
            context,
            'C Output',
            'Learn about C output functions and how to display text in C.',
            COutputPage(),
          ),
          _buildTopic(
            context,
            'C Variables and Comments',
            'Understand variables and comments in C programming.',
            CVariablesPage(),
          ),
          _buildTopic(
            context,
            'Data Types',
            'Learn about the various data types available in C.',
            CDataTypesPage(),
          ),
          _buildTopic(
            context,
            'Conditions',
            'Learn about conditional statements in C programming.',
            CConditionsPage(),
          ),
          _buildTopic(
            context,
            'C Functions',
            'Learn how to define and use functions in C.',
            CFunctionsPage(),
          ),
          _buildTopic(
            context,
            'Arrays and Strings',
            'Learn about arrays and strings in C.',
            CArraysStringsPage(),
          ),
          _buildTopic(
            context,
            'C User Input',
            'Learn how to handle user input in C programming.',
            CUserInputPage(),
          ),
          _buildTopic(
            context,
            'Pointers',
            'Explore the use of pointers in C programming.',
            CPointersPage(),
          ),
          _buildTopic(
            context,
            'File I/O',
            'Understand how to handle file input and output in C.',
            CFilePage(),
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
          // Navigate to the selected topic page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
