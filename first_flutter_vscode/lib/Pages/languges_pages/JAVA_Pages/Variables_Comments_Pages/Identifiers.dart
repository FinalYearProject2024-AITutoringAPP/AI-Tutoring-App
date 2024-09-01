import 'package:flutter/material.dart';

void main() {
  runApp(JAVAIdentifiersPage());
}

class JAVAIdentifiersPage extends StatelessWidget {
  get price => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Identifiers',
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
                'Java Identifiers',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is an Identifier?',
                'In Java, an identifier is a name used to identify a variable, method, class, or other user-defined item. Identifiers are used to give names to things in your program so that you can refer to them later.',
              ),
              _buildContent(
                context,
                'Rules for Identifiers',
                'Here are some rules and conventions for naming identifiers in Java:',
              ),
              _buildBulletPoint(
                context,
                '1. Identifiers must start with a letter (a-z, A-Z), currency character (c), or underscore (_).',
              ),
              _buildBulletPoint(
                context,
                '2. After the first character, identifiers can contain letters, digits (0-9), currency characters, or underscores.',
              ),
              _buildBulletPoint(
                context,
                '3. Identifiers cannot start with a digit.',
              ),
              _buildBulletPoint(
                context,
                '4. Identifiers must not be a reserved keyword or predefined name in Java.',
              ),
              _buildBulletPoint(
                context,
                '5. Java is case-sensitive, so "myvariable" and "myVariable" are different identifiers.',
              ),
              _buildContent(
                context,
                'Examples:',
                'Here are some valid and invalid examples of identifiers:',
              ),
              _buildCodeSnippet(
                context,
                'Valid Identifiers:',
                'int myVariable;\n'
                'String _name;\n'
                'double $price;\n'
                'class Student {}',
              ),
              _buildCodeSnippet(
                context,
                'Invalid Identifiers:',
                'int 1stVariable;  // Starts with a digit\n'
                'String my-Name;  // Contains an invalid character\n'
                'double my variable;  // Contains a space\n'
                'class class {};  // Reserved keyword',
              ),
              _buildContent(
                context,
                'Summary',
                'When naming identifiers, follow the rules and conventions to ensure your code is valid and readable. Avoid using reserved keywords and be consistent with your naming conventions.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 18, 
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildBulletPoint(BuildContext context, String bullet) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.white,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            bullet,
            style: TextStyle(
              fontSize: 18, 
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCodeSnippet(BuildContext context, String title, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.black,
          child: Text(
            code,
            style: TextStyle(
              fontFamily: 'CourierNew',
              fontSize: 16,
              color: Colors.greenAccent,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
