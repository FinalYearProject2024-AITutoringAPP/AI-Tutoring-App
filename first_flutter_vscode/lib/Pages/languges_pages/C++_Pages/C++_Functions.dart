import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Functions_Pages/Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Functions_Pages/Overloading.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Functions_Pages/Parameters.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Functions_Pages/Recursion.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Functions_Pages/Scope.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusFunctionsPage());
}

class CplusplusFunctionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Functions',
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
                'C++ Functions Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Functions', 'Learn about defining and using functions in C++', CplusplusFunctionPage()),
              _buildTopic(context, 'Parameters', 'Understand how to use parameters and arguments in functions', CplusplusParametersPage()),
              _buildTopic(context, 'Overloading', 'Explore function overloading in C++', CplusplusOverloadingPage()),
              _buildTopic(context, 'Scope', 'Learn about variable scope and lifetime in C++', CplusplusScopePage()),
              _buildTopic(context, 'Recursion', 'Understand recursion and its application in C++', CplusplusRecursionsPage()),
             
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
