import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingArraysPage());
}

class CProgrammingArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Arrays',
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
                'C Arrays',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'An array is a collection of variables that are accessed with an index number. In C, arrays are a way to store multiple values of the same type in a single variable.',
              ),
              SizedBox(height: 20.0),

              // Example Section
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'To declare an array in C, you specify the type of its elements and the number of elements required by an array as follows:\n'
                '```c\n'
                'int myNumbers[5];\n'
                '```\n'
                'To initialize an array, you can use the following syntax:\n'
                '```c\n'
                'int myNumbers[5] = {1, 2, 3, 4, 5};\n'
                '```\n'
                'To access array elements, use the index number:\n'
                '```c\n'
                'printf("%d", myNumbers[0]); // Outputs 1\n'
                '```\n'
                'Arrays in C are zero-indexed, meaning that the first element is at index 0.',
              ),
              SizedBox(height: 20.0),

              // Multidimensional Arrays Section
              _buildSectionTitle('Multidimensional Arrays'),
              _buildSectionContent(
                'C also supports multidimensional arrays, which are essentially arrays of arrays. A two-dimensional array can be declared as follows:\n'
                '```c\n'
                'int myMatrix[3][4];\n'
                '```\n'
                'To initialize a two-dimensional array:\n'
                '```c\n'
                'int myMatrix[3][4] = {\n'
                '    {1, 2, 3, 4},\n'
                '    {5, 6, 7, 8},\n'
                '    {9, 10, 11, 12}\n'
                '};\n'
                '```\n'
                'To access an element in a two-dimensional array:\n'
                '```c\n'
                'printf("%d", myMatrix[1][2]); // Outputs 7\n'
                '```\n'
                'The first index represents the row and the second index represents the column.',
              ),
              SizedBox(height: 20.0),

              // Array Operations Section
              _buildSectionTitle('Array Operations'),
              _buildSectionContent(
                'You can perform various operations on arrays, such as traversing through elements, modifying elements, and more.\n'
                'For example, to print all elements of an array:\n'
                '```c\n'
                'for(int i = 0; i < 5; i++) {\n'
                '    printf("%d ", myNumbers[i]);\n'
                '}\n'
                '```\n'
                'To modify an element of an array:\n'
                '```c\n'
                'myNumbers[2] = 10; // Changes the third element to 10\n'
                '```\n'
                'Remember that array indices must be within the bounds of the array.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(fontSize: 16, color: Colors.white70),
    );
  }
}
