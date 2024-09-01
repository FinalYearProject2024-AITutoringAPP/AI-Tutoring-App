import 'package:flutter/material.dart';

void main() {
  runApp(JAVAPrintVariablesPage());
}

class JAVAPrintVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Print Variables',
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
                'Java Print Variables',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildContent(
                context,
                'Printing Variables',
                'In Java, you can easily print variables by combining text and variables.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    String name = "John";\n'
                '    System.out.println("Name: " + name);\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Explanation:',
                'In the example above, we combined a string ("Name: ") with the variable name, using the + operator.',
              ),
              SizedBox(height: 20.0),
              _buildContent(
                context,
                'Multiple Variables',
                'You can also print multiple variables at once:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    String firstName = "John";\n'
                '    String lastName = "Doe";\n'
                '    System.out.println("Full Name: " + firstName + " " + lastName);\n'
                '  }\n'
                '}',
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
