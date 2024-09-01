import 'package:flutter/material.dart';

void main() {
  runApp(IfElsePage());
}

class IfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            ' If Statements',
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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main heading
              
              SizedBox(height: 10.0),
              
              // Introduction paragraph
              Text(
                'Python supports the usual logical conditions from mathematics:',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              
              // List of conditions
              _buildConditionList(),
              SizedBox(height: 20.0),

              // Heading for if statement
              Text(
                'If statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),

              Text(
                'An "if statement" is written by using the if keyword.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Example section with code snippet
              Text(
                'Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              _buildCodeExample(
                'a = 33\n'
                'b = 200\n'
                'if b > a:\n'
                '  print("b is greater than a")',
                'b is greater than a',
                context,
              ),
              SizedBox(height: 20.0),

              // Elif statement section
              Text(
                'Elif',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The elif keyword is pythons way of saying "if the previous conditions were not true, then try this condition".',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Elif example
              _buildCodeExample(
                'a = 33\n'
                'b = 33\n'
                'if b > a:\n'
                '  print("b is greater than a")\n'
                'elif a == b:\n'
                '  print("a and b are equal")',
                'a and b are equal',
                context,
              ),
              SizedBox(height: 20.0),

              // Else statement section
              Text(
                'Else',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The else keyword catches anything which isn\'t caught by the preceding conditions.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Else example
              _buildCodeExample(
                'a = 200\n'
                'b = 33\n'
                'if b > a:\n'
                '  print("b is greater than a")\n'
                'elif a == b:\n'
                '  print("a and b are equal")\n'
                'else:\n'
                '  print("a is greater than b")',
                'a is greater than b',
                context,
              ),
              SizedBox(height: 20.0),

              // Short Hand If section
              Text(
                'Short Hand If',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'If you have only one statement to execute, you can put it on the same line as the if statement.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Short Hand If example
              _buildCodeExample(
                'if a > b: print("a is greater than b")',
                'a is greater than b',
                context,
              ),
              SizedBox(height: 20.0),

              // Short Hand If...Else section
              Text(
                'Short Hand If...Else',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'If you have only one statement to execute, you can put it on the same line as the if statement.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Short Hand If...Else example
              _buildCodeExample(
                'a = 2\n'
                'b = 330\n'
                'print("A") if a > b else print("B")',
                'B',
                context,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConditionList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Equals: a == b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Not Equals: a != b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Less than: a < b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Less than or equal to: a <= b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Greater than: a > b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Greater than or equal to: a >= b',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildCodeExample(String code, String output, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            code,
            style: TextStyle(
              fontFamily: 'Courier New',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              _showOutput(context, output);
            },
            child: Text('Try it Yourself'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  void _showOutput(BuildContext context, String output) {
    // Simulate code execution by displaying a dialog with the output
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Output"),
          content: Text(output),
          actions:<Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

