import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusMultidimensionalArraysPage());
}

class CplusplusMultidimensionalArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Multidimensional Arrays',
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
                'C++ Multidimensional Arrays',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'A multidimensional array is an array of arrays. You can declare a multidimensional array as follows:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'int myNumbers[2][3] = {\n'
                '  {1, 2, 3},\n'
                '  {4, 5, 6}\n'
                '};\n\n'
                'cout << myNumbers[0][0] << "\\n";\n'
                'cout << myNumbers[0][1] << "\\n";\n'
                'cout << myNumbers[0][2] << "\\n";\n'
                'cout << myNumbers[1][0] << "\\n";\n'
                'cout << myNumbers[1][1] << "\\n";\n'
                'cout << myNumbers[1][2] << "\\n";',
              ),
              SizedBox(height: 20.0),

              Text(
                'Explanation',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'In this example, `myNumbers` is a two-dimensional array with 2 rows and 3 columns. The elements are accessed using two index numbers, one for the row and one for the column.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'The output of this code will be:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                '1\n2\n3\n4\n5\n6',
              ),
              SizedBox(height: 20.0),

              Text(
                'More Dimensions:',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You can have arrays with more than two dimensions. For example, a three-dimensional array can be declared as:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              _buildCodeSnippet(
                'int myNumbers[2][3][4];',
              ),
              SizedBox(height: 20.0),
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
