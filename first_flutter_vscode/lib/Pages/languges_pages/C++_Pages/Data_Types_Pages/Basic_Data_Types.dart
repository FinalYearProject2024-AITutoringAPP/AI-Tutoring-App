import 'package:flutter/material.dart';

class CplusplusBasicDataTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Basic Data Types',
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
              'Basic Data Types',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Data types are declarations for variables. This determines the type and size of data associated with variables. C++ has the following basic built-in data types:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildDataTypeSection(
              context,
              'int',
              'Used to store integers (whole numbers), without decimals, such as 123 or -123.',
              'Example:\n\nint myNum = 5;\ncout << myNum;',
            ),
            _buildDataTypeSection(
              context,
              'float',
              'Used to store floating-point numbers, with decimals, such as 19.99 or -19.99.',
              'Example:\n\nfloat myNum = 5.75;\ncout << myNum;',
            ),
            _buildDataTypeSection(
              context,
              'double',
              'Used to store large floating-point numbers, with decimals, such as 19.99 or -19.99.',
              'Example:\n\ndouble myNum = 19.99;\ncout << myNum;',
            ),
            _buildDataTypeSection(
              context,
              'char',
              'Used to store a single character, such as \'a\' or \'B\'. Char values are surrounded by single quotes.',
              'Example:\n\nchar myLetter = \'D\';\ncout << myLetter;',
            ),
            _buildDataTypeSection(
              context,
              'bool',
              'Used to store boolean values: true (1) or false (0).',
              'Example:\n\nbool myBoolean = true;\nbool isCodingFun = true;\nbool isFishTasty = false;\ncout << myBoolean;\ncout << isCodingFun;',
            ),
            _buildDataTypeSection(
              context,
              'string',
              'Used to store text, such as "Hello World". String values are surrounded by double quotes.',
              'Example:\n\nstring greeting = "Hello";\ncout << greeting;',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataTypeSection(BuildContext context, String type, String description, String example) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Text(
          'Example:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.symmetric(vertical: 10.0),
          color: Colors.black,
          child: Text(
            example,
            style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier New'),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
