import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Form_Pages/Form_Complete.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Form_Pages/Form_Handling.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Form_Pages/Form_Required.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Form_Pages/Form_URL_Email.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Form_Pages/Form_Validation.dart';

void main() {
  runApp(PHPFormsPage());
}

class PHPFormsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Forms',
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
                'PHP Forms Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'PHP Form Handling', '', PHPFormHandlingPage()),
              _buildTopic(context, 'PHP Form Validation', '', PHPFormValidationPage()),
              _buildTopic(context, 'PHP Form Required', '', PHPFormRequiredPage()),
              _buildTopic(context, 'PHP Form URL/E-mail', '', PHPFormURLEmailPage()),
              _buildTopic(context, 'PHP Form Complete', '', PHPFormCompletePage()),
              
              
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
