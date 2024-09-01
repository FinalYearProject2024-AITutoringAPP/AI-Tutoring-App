import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Class_Attributes.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Class_Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Classes_Objects.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Constructors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Encapsulation.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Inheritance.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/JOOP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Modifiers.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Classes_Pages/Polymorphism.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(JavaClassesPage());
}

class JavaClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Classes',
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
                'Classes and OOP Topics',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'OOP', JAVAOOPPage()),
              _buildTopic(context, 'Classes/Objects', JAVAClassesObjectsPage()),
              _buildTopic(context, 'Class Attributes', JAVAClassAttributesPage()),
              _buildTopic(context, 'Class Methods', JAVAClassMethodsPage()),
              _buildTopic(context, 'Constructors', JAVAClassConstructorsPage()),
              _buildTopic(context, 'Encapsulation', JAVAClassEncapsulationPage()),
              _buildTopic(context, 'Inheritance', JAVAInheritancePage()),
              _buildTopic(context, 'Polymorphism', JAVAPolymorphismPage()), 
              _buildTopic(context, 'Modifiers', JAVAModifiersPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, Widget nextPage) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
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
