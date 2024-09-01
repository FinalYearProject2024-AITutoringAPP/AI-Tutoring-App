import 'package:flutter/material.dart';

void main() {
  runApp(PHPConstantsPage());
}

class PHPConstantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Constants',
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
                'PHP Constants',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'What are Constants?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constants are like variables, except that once they are defined, they cannot be changed or undefined. Constants can be defined using the `define()` function in PHP. Constants are global and can be accessed anywhere in the script.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Defining a Constant:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
define("SITE_NAME", "My Website");

echo SITE_NAME; // Outputs: My Website
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Constants with Case Sensitivity:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'By default, constants are case-sensitive. You can use the optional third parameter in the `define()` function to set case insensitivity.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
define("SITE_NAME", "My Website", true);

echo site_name; // Outputs: My Website
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Class Constants:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In PHP, you can also define constants within classes using the `const` keyword. Class constants are accessible through the class name and are case-sensitive.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Car {
  const MODEL = "Toyota";

  public function showModel() {
    echo self::MODEL;
  }
}

echo Car::MODEL; // Outputs: Toyota
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Constants Summary',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constants in PHP are a powerful way to define values that should not change throughout the execution of a script. They can be used globally or within classes to ensure consistency and prevent accidental modification of important values.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodeSnippet extends StatelessWidget {
  final String code;

  CodeSnippet({required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontFamily: 'Courier New',
        ),
      ),
    );
  }
}
