import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusArraysLoopsPage());
}

class CplusplusArraysLoopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Arrays and Loops',
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
                'C++ Arrays and Loops',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'You can loop through the array elements with the for loop, and use the index number to access each element.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'int myNumbers[5] = {10, 20, 30, 40, 50};\n\n'
                'for (int i = 0; i < 5; i++) {\n'
                '  cout << myNumbers[i] << endl;\n'
                '}',
              ),
              SizedBox(height: 20.0),

              Text(
                'Example Explained',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'The output of this code will be:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                '10\n'
                '20\n'
                '30\n'
                '40\n'
                '50',
              ),
              SizedBox(height: 20.0),

              Text(
                'Using Range-based for Loop',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You can also use a range-based for loop, which is easier to read and write:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'int myNumbers[5] = {10, 20, 30, 40, 50};\n\n'
                'for (int i : myNumbers) {\n'
                '  cout << i << endl;\n'
                '}',
              ),
              SizedBox(height: 20.0),

              Text(
                'The output of this code will be the same:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                '10\n'
                '20\n'
                '30\n'
                '40\n'
                '50',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.black87,
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16.0,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
