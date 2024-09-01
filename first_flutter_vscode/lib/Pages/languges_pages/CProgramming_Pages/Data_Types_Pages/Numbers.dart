import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingNumbersPage());
}

class CProgrammingNumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Data Types - Numbers',
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
                'C Data Types - Numbers',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Numbers are of different types in C based on their size and whether they can store decimal values. The common types are:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildDataTypeCard(
                'int',
                'Stores whole numbers, without decimals, like 123 or -123.',
              ),
              _buildDataTypeCard(
                'float',
                'Stores fractional numbers, containing one or more decimals. Sufficient for storing 7 decimal digits.',
              ),
              _buildDataTypeCard(
                'double',
                'Stores fractional numbers, containing one or more decimals. Sufficient for storing 15 decimal digits.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Number Examples',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '''#include <stdio.h>\n\nint main() {\n  int myNum = 5;               // Integer (whole number)\n  float myFloatNum = 5.99;     // Floating point number\n  double myDoubleNum = 9.98;   // Double precision floating point number\n\n  // Print variable values\n  printf("%d\\n", myNum);\n  printf("%f\\n", myFloatNum);\n  printf("%lf\\n", myDoubleNum);\n  return 0;\n}''',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Output',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '5\n5.990000\n9.980000',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Scientific Notation',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A floating point number can also be a scientific number with an "e" to indicate the power of 10:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '''float f1 = 35e3;\ndouble d1 = 12E4;\n\nprintf("%f\\n", f1);\nprintf("%lf\\n", d1);''',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Output',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  '35000.000000\n120000.000000',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataTypeCard(String type, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          type,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70, fontSize: 16.0),
        ),
      ),
    );
  }
}
