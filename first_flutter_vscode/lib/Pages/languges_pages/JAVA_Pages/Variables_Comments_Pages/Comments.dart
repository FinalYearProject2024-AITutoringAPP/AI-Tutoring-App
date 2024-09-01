import 'package:flutter/material.dart';

void main() {
  runApp(JAVACommentPage());
}

class JAVACommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Comments',
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
                'Java Comments',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Comment?',
                'Comments are used to explain the code and make it more readable. They are ignored by the Java compiler and do not affect the execution of the program.',
              ),
              _buildContent(
                context,
                'Types of Comments',
                'In Java, there are three types of comments:',
              ),
              _buildBulletPoint(
                context,
                '1. Single-line comments',
              ),
              _buildCodeSnippet(
                context,
                'Single-line Comments Example:',
                '// This is a single-line comment\n'
                'int x = 5; // This is another single-line comment\n'
                'System.out.println(x);',
              ),
              _buildBulletPoint(
                context,
                '2. Multi-line comments',
              ),
              _buildCodeSnippet(
                context,
                'Multi-line Comments Example:',
                '/* This is a multi-line comment\n'
                '   It can span multiple lines.\n'
                '*/\n'
                'int y = 10;\n'
                'System.out.println(y);',
              ),
              _buildBulletPoint(
                context,
                '3. Documentation comments',
              ),
              _buildCodeSnippet(
                context,
                'Documentation Comments Example:',
                '/**\n'
                ' * This is a documentation comment.\n'
                ' * It is used to describe the purpose of a class or method.\n'
                ' */\n'
                'public class Example {\n'
                '    /**\n'
                '     * This is a method.\n'
                '     */\n'
                '    public void myMethod() {\n'
                '        // code here\n'
                '    }\n'
                '}',
              ),
              _buildContent(
                context,
                'Summary',
                'Comments are essential for documenting your code and improving its readability. Use single-line comments for short explanations, multi-line comments for longer descriptions, and documentation comments for API documentation.',
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
