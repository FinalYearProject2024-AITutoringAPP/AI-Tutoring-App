import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java-Data_Types.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/JAVA_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/JAVA_intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Classes_OOP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Conditions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Exception_handling.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Operators.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Output.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Java_Variables.dart';

class JavaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Java Basics',
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
            'Introduction to JAVA',
            'Learn about Java, its history, and its features.',
            JavaIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Basic Syntax',
            'Understand Java syntax, including variables, operators, and control structures.',
            JavaSyntaxPage(),
          ),
          _buildTopic(
            context,
            'JAVA Output',
            'Learn about Java Output.',
            JavaOutputPage(),
          ),
          _buildTopic(
            context,
            'Variables and Comments',
            'Learn about Java Variables and Comments.',
            JavaVariablesPage(),
          ),
          _buildTopic(
            context,
            'Data Types',
            'Learn about Java Data Types.',
            JavaDataTypesPage(),
          ),
          _buildTopic(
            context,
            'JAVA Operators',
            'Learn about Java Operators.',
            JavaOperatorsPage(),
          ),
          _buildTopic(
            context,
            'Conditions',
            'Learn about Java Conditions.',
            JavaConditionsPage(),
          ),
          _buildTopic(
            context,
            'JAVA Classes & Object-Oriented Programming',
            'Explore Java’s object-oriented features like classes, inheritance, and polymorphism.',
            JavaClassesPage(),
          ),
          _buildTopic(
            context,
            'Exception Handling',
            'Learn about handling exceptions and errors in Java.',
            JavaExceptionHandlingPage(),
          ),
          _buildTopic(
            context,
            'JAVA Arrays',
            'Understand Java Arrays.',
            JavaArraysPage(),
          ),
          _buildTopic(
            context,
            'JAVA Methods',
            'Learn about Java Methods.',
            JavaMethodsPage(),
          ),
          // Add more topics as needed
        ],
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String title, String description, Widget destinationPage) {
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
          // Navigate to the detailed content page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationPage),
          );
        },
      ),
    );
  }
}

