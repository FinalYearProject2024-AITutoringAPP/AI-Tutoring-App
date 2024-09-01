import 'package:flutter/material.dart';

void main() {
  runApp(JAVAMultidimensionalArraysPage());
}

class JAVAMultidimensionalArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Multidimensional Arrays',
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
                'Multidimensional Arrays',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Multidimensional arrays are arrays of arrays. They can be used to represent tables, matrices, or other grid-like structures.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'Declare a Multidimensional Array:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'int[][] myArray;\n'
                  'myArray = new int[4][5];',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Access Elements of a Multidimensional Array:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'To access an element in a multidimensional array, use two indices:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'int x = myArray[1][2];',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Initialize a Multidimensional Array:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'You can initialize a multidimensional array with values like this:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'int[][] myArray = {\n'
                  '  {1, 2, 3},\n'
                  '  {4, 5, 6},\n'
                  '  {7, 8, 9}\n'
                  '};',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Loop Through a Multidimensional Array:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'You can loop through a multidimensional array using nested loops:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'for (int i = 0; i < myArray.length; i++) {\n'
                  '  for (int j = 0; j < myArray[i].length; j++) {\n'
                  '    System.out.print(myArray[i][j] + " ");\n'
                  '  }\n'
                  '  System.out.println();\n'
                  '}',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Multidimensional Arrays with Different Sizes:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'You can also create arrays with different sizes in each row:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'int[][] myArray = new int[3][];\n'
                  'myArray[0] = new int[2];\n'
                  'myArray[1] = new int[4];\n'
                  'myArray[2] = new int[3];',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Each row of the array can have different lengths, which allows for flexibility in how data is stored and managed.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
