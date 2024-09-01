import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Abstract_Classes.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Access_Modifiers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Classes_Objects.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Constants.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Constructor.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/Inheritance.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Classes_Objects_Pages/OOP.dart';

void main() {
  runApp(PHPClassesObjectsConstructorOOPPage());
}

class PHPClassesObjectsConstructorOOPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Classes/Objects, Constructor and OOP',
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
                'PHP Classes/Objects, Constructor and OOP Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'What is OOP', '', PHPOOPPage()),
              _buildTopic(context, 'PHP Classes/Objects', '', PHPClassesObjectsPage()),
              _buildTopic(context, 'PHP Constructor', '', PHPConstructorPage()),
              _buildTopic(context, 'PHP Inheritance', '', PHPInheritancePage()),
              _buildTopic(context, 'PHP Access Modifiers', '', PHPAccessModifiersPage()),
              _buildTopic(context, 'PHP Constants', '', PHPConstantsPage()),
              _buildTopic(context, 'PHP Abstract Classes', '', PHPAbstractClassesPage()),
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
