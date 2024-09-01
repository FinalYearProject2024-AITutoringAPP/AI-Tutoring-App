import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/OOP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Classes_Objects.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Class_Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Constructors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Encapsulation.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Inheritance.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Polymorphism.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Classes_OOP_Pages/Exception.dart';

void main() {
  runApp(CplusplusClassesPage());
}

class CplusplusClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Classes and OOP',
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
                'C++ Classes Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'OOP', '', CplusplusOOPsPage()),
              _buildTopic(context, 'Classes/Objects', '', CplusplusClassesObjectsPage()),
              _buildTopic(context, 'Class Methods', '', CplusplusClassMethodsPage()),
              _buildTopic(context, 'Constructors', '', CplusplusConstructorsPage()),
              _buildTopic(context, 'Encapsulation', '', CplusplusEncapsulationPage()),
              _buildTopic(context, 'Inheritance', '', CplusplusInheritancePage()),
              _buildTopic(context, 'Polymorphism', '', CplusplusPolymorphismPage()),
              _buildTopic(context, 'Exceptions', '', CplusplusExceptionPage()),
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
