import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Method_Pages/Methods.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Method_Pages/Overloading.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Method_Pages/Parameters_Return_Values.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Method_Pages/Recursions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Method_Pages/Scope.dart';

void main() {
  runApp(JavaMethodsPage());
}

class JavaMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Methods',
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
                'Java Methods Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Methods', JavaMethodPage(), 'Learn about Java methods.'),
              _buildTopic(context, 'Parameters and Return Values', JavaMethodParametersPage(), 'Learn about method parameters and return values.'),
              _buildTopic(context, 'Overloading', JavaMethodOverloadingPage(), 'Learn about method overloading.'),
              _buildTopic(context, 'Scope', JavaMethodScopePage(), 'Learn about method scope.'),
              _buildTopic(context, 'Recursion', JavaMethodRecursionPage(), 'Learn about recursion in Java.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, Widget page, String description) {
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
