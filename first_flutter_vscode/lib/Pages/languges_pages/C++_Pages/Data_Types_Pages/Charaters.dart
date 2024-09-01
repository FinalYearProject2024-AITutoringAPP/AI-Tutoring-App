import 'package:flutter/material.dart';

class CplusplusCharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C++ Character Data Type',
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
              'Character Data Type',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'The `char` data type is used to store a single character. The character must be surrounded by single quotes, like `A` or `c`.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example:',
              'char myGrade = \'B\';\ncout << myGrade;',
            ),
            SizedBox(height: 20.0),
            Text(
              'ASCII Values:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            SizedBox(height: 10.0),
            Text(
              'If you store a character in a `char` variable, you can use it as a numeric value in C++. This is because the character is internally stored as an ASCII value.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildExampleSection(
              context,
              'Example:',
              'char a = 65;\ncout << a; // Outputs A',
            ),
            SizedBox(height: 20.0),
            Text(
              'The example above shows how the character `A` is represented by the number 65 in the ASCII table.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'You will learn more about the ASCII table in the next chapter.',
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
