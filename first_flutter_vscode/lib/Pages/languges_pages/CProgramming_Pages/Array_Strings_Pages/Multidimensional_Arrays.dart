import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingMultidimensionalArraysPage());
}

class CProgrammingMultidimensionalArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Multidimensional Arrays',
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
                'C Multidimensional Arrays',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'In C, arrays can have multiple dimensions. A multidimensional array is an array of arrays. '
                'The most common type is the two-dimensional array, but arrays can have more than two dimensions.'
              ),
              SizedBox(height: 20.0),

              // Two-Dimensional Arrays Section
              _buildSectionTitle('Two-Dimensional Arrays'),
              _buildSectionContent(
                'A two-dimensional array is declared like this:\n'
                '```c\n'
                'int myNumbers[2][3];\n'
                '```\n'
                'This array contains 2 arrays, each holding 3 elements:\n'
                '```c\n'
                'myNumbers[0][0], myNumbers[0][1], myNumbers[0][2]\n'
                'myNumbers[1][0], myNumbers[1][1], myNumbers[1][2]\n'
                '```'
              ),
              SizedBox(height: 20.0),

              // Example Section
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of how to use a two-dimensional array:\n'
                '```c\n'
                '#include <stdio.h>\n\n'
                'int main() {\n'
                '  int myNumbers[2][3] = {\n'
                '    {1, 2, 3},\n'
                '    {4, 5, 6}\n'
                '  };\n\n'
                '  printf("%d", myNumbers[0][2]);\n' // Outputs 3
                '  return 0;\n'
                '}\n'
                '```\n'
                'The example above creates a two-dimensional array and prints the value at the index `[0][2]`, which is `3`.'
              ),
              SizedBox(height: 20.0),

              // Three-Dimensional Arrays Section
              _buildSectionTitle('Three-Dimensional Arrays'),
              _buildSectionContent(
                'You can also create a three-dimensional array:\n'
                '```c\n'
                'int myNumbers[2][3][4];\n'
                '```\n'
                'This array contains 2 arrays of 3 arrays, each containing 4 elements. Accessing elements in such an array '
                'follows a similar pattern, but now requires three indices.'
              ),
              SizedBox(height: 20.0),

              // Example of Three-Dimensional Array
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of a three-dimensional array:\n'
                '```c\n'
                '#include <stdio.h>\n\n'
                'int main() {\n'
                '  int myNumbers[2][3][4] = {\n'
                '    {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}},\n'
                '    {{13, 14, 15, 16}, {17, 18, 19, 20}, {21, 22, 23, 24}}\n'
                '  };\n\n'
                '  printf("%d", myNumbers[1][2][3]);\n' // Outputs 24
                '  return 0;\n'
                '}\n'
                '```\n'
                'This example creates a three-dimensional array and prints the value at the index `[1][2][3]`, which is `24`.'
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

