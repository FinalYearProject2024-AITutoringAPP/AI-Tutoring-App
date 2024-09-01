import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Functions_Pages/Function_Declaration.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Functions_Pages/Function_Parameters.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Functions_Pages/Math_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Functions_Pages/Recursion.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Functions_Pages/Scope.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CFunctionsPage());
}

class CFunctionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Functions',
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
                'C Functions Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Function Parameters', '', CProgrammingFunctionParametersPage()),
              _buildTopic(context, 'Scope', '', CProgrammingScopePage()),
              _buildTopic(context, 'Function Declaration', '', CProgrammingFunctionDeclarationPage()),
              _buildTopic(context, 'Recursion', '', CProgrammingRecursionsPage()),
              _buildTopic(context, 'Math Functions', '', CProgrammingMathFunctionsPage()),
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
