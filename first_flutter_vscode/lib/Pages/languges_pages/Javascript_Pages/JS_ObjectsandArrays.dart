import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Array_Const.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Array_Iteration.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Array_Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Array_Search.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Array_Sort.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Object_Constructors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Object_Display.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Object_Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Object_Properties.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/Objects_Arrays_Pages/Objects.dart';

void main() {
  runApp(JavascriptObjectsandArraysPage());
}

class JavascriptObjectsandArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JS Objects and Arrays',
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
                'Objects and Arrays Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Objects', '', JSObjectsPage()),
              _buildTopic(context, 'Object Properties', '', JSObjectPropertiesPage()),
              _buildTopic(context, 'Object Methods', '', JSObjectMethodsPage()),
              _buildTopic(context, 'Objects Display', '', JSObjectDisplayPage()),
              _buildTopic(context, 'Objects Constructors', '', JSObjectConstructorsPage()),
              _buildTopic(context, 'Arrays', '', JSArraysPage()),
              _buildTopic(context, 'Array Methods', '', JSArrayMethodsPage()),
              _buildTopic(context, 'Array Search', '', JSArraySearchPage()),
              _buildTopic(context, 'Array Sort', '', JSArraySortPage()),
              _buildTopic(context, 'Array Iteration', '', JSArrayIterationPage()),
              _buildTopic(context, 'Array Const', '', JSArrayConstPage()),
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
