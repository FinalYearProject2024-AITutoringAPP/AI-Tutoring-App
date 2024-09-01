import 'package:flutter/material.dart';

class CplusplusStringsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ String Data Type',
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
              'String Data Type',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'In C++, the `string` data type is used to represent a sequence of characters. Strings are a part of the C++ Standard Library, and they are used to store and manipulate text.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example:',
              'string myString = "Hello World!";\ncout << myString;',
            ),
            SizedBox(height: 20.0),
            Text(
              'String Functions:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            SizedBox(height: 10.0),
            Text(
              'C++ strings come with a variety of functions to perform operations like concatenation, finding substrings, and more.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example of Concatenation:',
              'string str1 = "Hello";\nstring str2 = " World!";\nstring result = str1 + str2;\ncout << result;', 
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example of Finding Substrings:',
              'string myString = "Hello World!";\nstring subStr = myString.substr(0, 5);\ncout << subStr; // Outputs "Hello"',
            ),
            SizedBox(height: 20.0),
            Text(
              'C++ strings also support a range of operations such as checking the length of the string, and converting to uppercase/lowercase.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example of String Length:',
              'string myString = "Hello World!";\ncout << myString.length(); // Outputs 12',
            ),
            SizedBox(height: 20.0),
            Text(
              'You can refer to the official C++ documentation or tutorials for more details on the available string methods and their usage.',
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
