import 'package:flutter/material.dart';

class JavaOperatorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Java Operators',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Java Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Operators are used to perform operations on variables and values.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'In the example below, we use the + operator to add together two values:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
int x = 100 + 50;''',
            ),
            SizedBox(height: 20.0),
            Text(
              'Java divides the operators into the following groups:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildOperatorGroup(
              'Arithmetic operators',
              'Used to perform common mathematical operations.',
            ),
            _buildOperatorGroup(
              'Assignment operators',
              'Used to assign values to variables.',
            ),
            _buildOperatorGroup(
              'Comparison operators',
              'Used to compare two values.',
            ),
            _buildOperatorGroup(
              'Logical operators',
              'Used to combine conditional statements.',
            ),
            _buildOperatorGroup(
              'Bitwise operators',
              'Used to perform bit-level operations.',
            ),
            SizedBox(height: 20.0),

            // Arithmetic Operators
            Text(
              'Arithmetic Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOperatorTable([
              _buildOperatorRow('+', 'Addition', 'Adds together two values'),
              _buildOperatorRow('-', 'Subtraction', 'Subtracts one value from another'),
              _buildOperatorRow('*', 'Multiplication', 'Multiplies two values'),
              _buildOperatorRow('/', 'Division', 'Divides one value by another'),
              _buildOperatorRow('%', 'Modulus', 'Returns the division remainder'),
              _buildOperatorRow('++', 'Increment', 'Increases the value of a variable by 1'),
              _buildOperatorRow('--', 'Decrement', 'Decreases the value of a variable by 1'),
            ]),
            SizedBox(height: 20.0),

            // Assignment Operators
            Text(
              'Assignment Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOperatorTable([
              _buildOperatorRow('=', 'Assign', 'Assigns a value to a variable'),
              _buildOperatorRow('+=', 'Add and assign', 'Adds a value and assigns the result'),
              _buildOperatorRow('-=', 'Subtract and assign', 'Subtracts a value and assigns the result'),
              _buildOperatorRow('*=', 'Multiply and assign', 'Multiplies and assigns the result'),
              _buildOperatorRow('/=', 'Divide and assign', 'Divides and assigns the result'),
              _buildOperatorRow('%=', 'Modulus and assign', 'Calculates modulus and assigns the result'),
            ]),
            SizedBox(height: 20.0),

            // Comparison Operators
            Text(
              'Comparison Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOperatorTable([
              _buildOperatorRow('==', 'Equal to', 'Checks if two values are equal'),
              _buildOperatorRow('!=', 'Not equal to', 'Checks if two values are not equal'),
              _buildOperatorRow('>', 'Greater than', 'Checks if one value is greater than another'),
              _buildOperatorRow('<', 'Less than', 'Checks if one value is less than another'),
              _buildOperatorRow('>=', 'Greater than or equal to', 'Checks if a value is greater than or equal to another'),
              _buildOperatorRow('<=', 'Less than or equal to', 'Checks if a value is less than or equal to another'),
            ]),
            SizedBox(height: 20.0),

            // Logical Operators
            Text(
              'Logical Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOperatorTable([
              _buildOperatorRow('&&', 'Logical and', 'Returns true if both statements are true'),
              _buildOperatorRow('||', 'Logical or', 'Returns true if one of the statements is true'),
              _buildOperatorRow('!', 'Logical not', 'Reverses the result of the condition'),
            ]),
            SizedBox(height: 20.0),

            // Bitwise Operators
            Text(
              'Bitwise Operators',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildOperatorTable([
              _buildOperatorRow('&', 'Bitwise and', 'Returns 1 if both bits are 1'),
              _buildOperatorRow('|', 'Bitwise or', 'Returns 1 if either bit is 1'),
              _buildOperatorRow('^', 'Bitwise xor', 'Returns 1 if only one of the bits is 1'),
              _buildOperatorRow('~', 'Bitwise not', 'Inverts all the bits'),
              _buildOperatorRow('<<', 'Left shift', 'Shifts the bits to the left'),
              _buildOperatorRow('>>', 'Right shift', 'Shifts the bits to the right'),
            ]),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[850],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 16,
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }

  Widget _buildOperatorGroup(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.label, color: Colors.cyan),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              '$title - $description',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOperatorTable(List<TableRow> rows) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      children: rows,
    );
  }

  TableRow _buildOperatorRow(String operator, String name, String description) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            operator,
            style: TextStyle(color: Colors.cyan, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
