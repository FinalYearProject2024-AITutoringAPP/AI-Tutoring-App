import 'package:flutter/material.dart';

class CplusplusNumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Numeric Data Types',
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
              'Numeric Data Types',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'C++ has several different numeric data types, all based on the number of bytes used to store them:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildNumericTypeSection(
              context,
              'int',
              '4 bytes',
              '-2147483648 to 2147483647',
              'Example:\n\nint myNum = 100000;\ncout << myNum;',
            ),
            _buildNumericTypeSection(
              context,
              'float',
              '4 bytes',
              '1.2E-38 to 3.4E+38',
              'Example:\n\nfloat myFloatNum = 5.75;\ncout << myFloatNum;',
            ),
            _buildNumericTypeSection(
              context,
              'double',
              '8 bytes',
              '2.3E-308 to 1.7E+308',
              'Example:\n\ndouble myDoubleNum = 19.99;\ncout << myDoubleNum;',
            ),
            _buildNumericTypeSection(
              context,
              'short',
              '2 bytes',
              '-32768 to 32767',
              'Example:\n\nshort myShortNum = 5000;\ncout << myShortNum;',
            ),
            _buildNumericTypeSection(
              context,
              'long',
              '8 bytes',
              '-9223372036854775808 to 9223372036854775807',
              'Example:\n\nlong myLongNum = 15000000000;\ncout << myLongNum;',
            ),
            _buildNumericTypeSection(
              context,
              'long double',
              '12 bytes',
              '3.4E-4932 to 1.1E+4932',
              'Example:\n\nlong double myNum = 1.23456789012345;\ncout << myNum;',
            ),
            SizedBox(height: 20.0),
            Text(
              'Note:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'The number of bytes used by these types may vary depending on the compiler and the computer architecture.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNumericTypeSection(
    BuildContext context,
    String type,
    String size,
    String range,
    String example,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
        ),
        SizedBox(height: 10.0),
        Text(
          'Size: $size',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        Text(
          'Range: $range',
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

