import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingArraySizePage());
}

class CProgrammingArraySizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Array Size',
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
                'C Array Size',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The size of an array in C is fixed at the time of its declaration. The size of the array is the number of elements that the array can hold. '
                'In C, the size of an array is determined by the number of elements specified within the square brackets during its declaration.',
              ),
              SizedBox(height: 20.0),

              // Example Section
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                'int myNumbers[5]; // An array of size 5\n'
                '```\n'
                'This array can hold 5 elements, which means it has indices ranging from 0 to 4. For example:\n'
                '```c\n'
                'myNumbers[0] = 25;\n'
                'myNumbers[1] = 50;\n'
                '```\n'
                'The number of elements in the array is fixed, and once the array is created, its size cannot be changed.',
              ),
              SizedBox(height: 20.0),

              // Accessing Array Size Section
              _buildSectionTitle('Accessing Array Size'),
              _buildSectionContent(
                'To determine the size of an array, you can use the `sizeof` operator in C. The `sizeof` operator returns the size in bytes of the array.\n'
                'For example, to calculate the size of an integer array in elements, you can divide the total size of the array by the size of one element:\n'
                '```c\n'
                'int myNumbers[5];\n'
                'int arraySize = sizeof(myNumbers) / sizeof(myNumbers[0]);\n'
                'printf("The size of the array is: %d", arraySize);\n'
                '```\n'
                'In this case, `sizeof(myNumbers)` gives the total size of the array in bytes, and `sizeof(myNumbers[0])` gives the size of a single element in the array.',
              ),
              SizedBox(height: 20.0),

              // Array Size in Multidimensional Arrays
              _buildSectionTitle('Array Size in Multidimensional Arrays'),
              _buildSectionContent(
                'In the case of multidimensional arrays, you can calculate the size in a similar manner. For example, for a two-dimensional array:\n'
                '```c\n'
                'int myMatrix[3][4];\n'
                'int totalSize = sizeof(myMatrix) / sizeof(myMatrix[0][0]);\n'
                'int rowSize = sizeof(myMatrix) / sizeof(myMatrix[0]);\n'
                'int columnSize = totalSize / rowSize;\n'
                '```\n'
                'This code calculates the total number of elements, the number of rows, and the number of columns in the array.',
              ),
              SizedBox(height: 20.0),

              // Note Section
              _buildSectionTitle('Note'),
              _buildSectionContent(
                'Remember that the size of an array is fixed in C. If you need a dynamically sized array, you would need to use pointers and dynamic memory allocation using functions like `malloc` or `calloc`.',
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
