import 'package:flutter/material.dart';

void main() {
  runApp(ForLoopPage());
}

class ForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'For Loops',
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
              Text(
                'A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'For Loop Syntax',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The syntax for a for loop is:\n\n'
                'for variable in sequence:\n'
                '    statements',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Looping Through a List',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can loop through the items in a list by using a for loop.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'fruits = ["apple", "banana", "cherry"]\n'
                'for fruit in fruits:\n'
                '    print(fruit)',
                'apple\nbanana\ncherry',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Looping Through a String',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can loop through a string by using a for loop.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'for letter in "banana":\n'
                '    print(letter)',
                'b\na\nn\na\nn\na',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The range() Function',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and stops before a specified number.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'for x in range(6):\n'
                '    print(x)',
                '0\n1\n2\n3\n4\n5',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Nested Loops',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'A nested loop is a loop inside another loop.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'adj = ["red", "big", "tasty"]\n'
                'fruits = ["apple", "banana", "cherry"]\n'
                'for x in adj:\n'
                '    for y in fruits:\n'
                '        print(x, y)',
                'red apple\nred banana\nred cherry\nbig apple\nbig banana\nbig cherry\ntasty apple\ntasty banana\ntasty cherry',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Break Statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The break statement terminates the current loop and resumes execution at the next statement.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'fruits = ["apple", "banana", "cherry"]\n'
                'for fruit in fruits:\n'
                '    print(fruit)\n'
                '    if fruit == "banana":\n'
                '        break',
                'apple\nbanana',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Continue Statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The continue statement skips the rest of the code inside the loop for the current iteration and jumps to the next iteration.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'fruits = ["apple", "banana", "cherry"]\n'
                'for fruit in fruits:\n'
                '    if fruit == "banana":\n'
                '        continue\n'
                '    print(fruit)',
                'apple\ncherry',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Else in For Loops',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The else keyword in a for loop specifies a block of code to be executed when the loop has exhausted iterating the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'fruits = ["apple", "banana", "cherry"]\n'
                'for fruit in fruits:\n'
                '    print(fruit)\n'
                'else:\n'
                '    print("No more fruits")',
                'apple\nbanana\ncherry\nNo more fruits',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Pass Statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The pass statement is a null statement. The statement is required syntactically but you do not want any command or code to execute.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'for x in [0, 1, 2]:\n'
                '    pass',
                '',
                context,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
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
          if (output.isNotEmpty)
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Output"),
          content: Text(output),
          actions: <Widget>[
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
