import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingCharactersPage());
}

class CProgrammingCharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Data Types - Characters',
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
                'C Data Types - Characters',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The `char` data type is used to store a single character. The character must be enclosed in single quotes, like this:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  "char myChar = 'A';",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Example',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '''#include <stdio.h>\n\nint main() {\n  char myChar = 'B';\n  printf("%c", myChar);\n  return 0;\n}''',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Output',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  'B',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'ASCII Values',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, characters are stored as numbers. The char data type is a small integer type, and each character is associated with an ASCII value.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'For example, the ASCII value for A is 65, and B is 66. Here is how you can print the ASCII value of a character:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Example',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '''#include <stdio.h>\n\nint main() {\n  char myChar = 'C';\n  printf("%d", myChar);\n  return 0;\n}''',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Output',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '67',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
