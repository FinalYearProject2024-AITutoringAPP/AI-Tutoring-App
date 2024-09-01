import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingDecimalPrecisionPage());
}

class CProgrammingDecimalPrecisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Data Types - Decimal Precision',
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
                'C Data Types - Decimal Precision',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Floating point types have varying precision in C. Depending on the type, the number of significant digits that can be stored varies. The common types are:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildDataTypeCard(
                'float',
                '4 bytes. Stores fractional numbers, containing one or more decimals. Sufficient for storing 7 decimal digits.',
              ),
              _buildDataTypeCard(
                'double',
                '8 bytes. Stores fractional numbers, containing one or more decimals. Sufficient for storing 15 decimal digits.',
              ),
              _buildDataTypeCard(
                'long double',
                '10 bytes. Stores fractional numbers, containing one or more decimals. Sufficient for storing 19 decimal digits.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Precision Example',
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
                  '''#include <stdio.h>\n\nint main() {\n  float myFloat = 3.141592653589793;\n  double myDouble = 3.141592653589793;\n  long double myLongDouble = 3.141592653589793238462643383279502884;\n\n  // Print variable values\n  printf("%f\\n", myFloat);\n  printf("%lf\\n", myDouble);\n  printf("%Lf\\n", myLongDouble);\n  return 0;\n}''',
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
                  '3.141593\n3.141593\n3.141592653589793238',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier New',
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Note',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The precision of a floating point number is limited by the number of significant digits it can store. For example, a `float` can only store up to 7 decimal digits accurately.',
                style: TextStyle(fontSize: 18, color: Colors.white),
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
