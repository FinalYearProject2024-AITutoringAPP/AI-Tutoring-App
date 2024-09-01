import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingDataTypePage());
}

class CProgrammingDataTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Data Types',
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
                'C Data Types',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables are containers for storing data values.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C, there are different data types defined to store different types of data:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              _buildDataTypeSection(
                'Data Type',
                'Size',
                'Description',
              ),
              Divider(color: Colors.white),
              _buildDataTypeSection(
                'int',
                '2 or 4 bytes',
                'Stores integers (whole numbers), without decimals, such as 123 or -123.',
              ),
              Divider(color: Colors.white),
              _buildDataTypeSection(
                'float',
                '4 bytes',
                'Stores floating point numbers, with decimals, such as 19.99 or -19.99.',
              ),
              Divider(color: Colors.white),
              _buildDataTypeSection(
                'double',
                '8 bytes',
                'Stores floating point numbers, with decimals, such as 19.99 or -19.99.',
              ),
              Divider(color: Colors.white),
              _buildDataTypeSection(
                'char',
                '1 byte',
                'Stores a single character/letter/number, or ASCII values.',
              ),
              Divider(color: Colors.white),

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
                  '''#include <stdio.h>\n\nint main() {\n  int myNum = 5;            // Integer (whole number)\n  float myFloatNum = 5.99;  // Floating point number\n  char myLetter = 'D';       // Character\n\n  printf("%d\\n", myNum);\n  printf("%f\\n", myFloatNum);\n  printf("%c\\n", myLetter);\n\n  return 0;\n}''',
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
                  '''5\n5.990000\nD''',
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

  Widget _buildDataTypeSection(String type, String size, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          size,
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        Text(
          description,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
