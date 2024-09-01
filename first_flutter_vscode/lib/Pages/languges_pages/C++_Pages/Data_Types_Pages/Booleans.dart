import 'package:flutter/material.dart';

class CplusplusBooleanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Boolean Data Type',
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
              'Boolean Data Type',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'A boolean variable is declared with the `bool` keyword and can only have two possible values: true or false.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example:',
              'bool isCodingFun = true;\nbool isFishTasty = false;\ncout << isCodingFun;  // Outputs 1 (true)\ncout << isFishTasty;  // Outputs 0 (false)',
            ),
            SizedBox(height: 20.0),
            Text(
              'Boolean Values:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            SizedBox(height: 10.0),
            Text(
              'Boolean values are commonly used in conditional testing, which you will learn more about in later chapters.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Example with Conditional Testing:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            SizedBox(height: 10.0),
            _buildExampleSection(
              context,
              'Example:',
              'int x = 10;\nint y = 9;\ncout << (x > y);  // Outputs 1 (true), because 10 is greater than 9',
            ),
            SizedBox(height: 20.0),
            Text(
              'In the example above, the expression `(x > y)` evaluates to `true` because 10 is greater than 9.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleSection(BuildContext context, String title, String example) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
      ],
    );
  }
}
