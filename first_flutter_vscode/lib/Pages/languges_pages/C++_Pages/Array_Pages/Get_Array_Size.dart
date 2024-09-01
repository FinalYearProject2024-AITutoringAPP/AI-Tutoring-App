import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusGetArraySizePage());
}

class CplusplusGetArraySizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Get Array Size',
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
                'C++ Get Array Size',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'To get the size of an array in C++, you can use the `sizeof` operator.',
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
                'int arraySize = sizeof(myNumbers) / sizeof(myNumbers[0]);\n'
                'cout << arraySize;',
              ),
              SizedBox(height: 20.0),

              Text(
                'Example Explained',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'The `sizeof` operator returns the size of a variable, in bytes.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'In this example, `sizeof(myNumbers)` gives the total size of the array, in bytes. Dividing this by the size of a single element (`sizeof(myNumbers[0])`) gives the number of elements in the array.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'The output of this code will be:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet('5'),
              SizedBox(height: 20.0),

              Text(
                'Note:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'This method works only for arrays that have a fixed size defined at compile-time. It will not work for dynamically allocated arrays (e.g., arrays created using pointers).',
                style: TextStyle(fontSize: 18, color: Colors.white),
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
