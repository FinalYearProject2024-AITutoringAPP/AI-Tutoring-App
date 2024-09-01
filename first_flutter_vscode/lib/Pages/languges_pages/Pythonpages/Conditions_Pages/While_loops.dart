import 'package:flutter/material.dart';

void main() {
  runApp(WhileLoopPage());
}

class WhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'While Loops',
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
                'Python has two primitive loop commands:\n'
                '1. while loops\n'
                '2. for loops',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'The While Loop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'With the while loop we can execute a set of statements as long as a condition is true.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'i = 1\n'
                'while i < 6:\n'
                '  print(i)\n'
                '  i += 1',
                '1\n2\n3\n4\n5',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The Break Statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'With the break statement we can stop the loop even if the while condition is true.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'i = 1\n'
                'while i < 6:\n'
                '  print(i)\n'
                '  if i == 3:\n'
                '    break\n'
                '  i += 1',
                '1\n2\n3',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The Continue Statement',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'With the continue statement we can stop the current iteration of the loop and continue with the next iteration.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'i = 0\n'
                'while i < 6:\n'
                '  i += 1\n'
                '  if i == 3:\n'
                '    continue\n'
                '  print(i)',
                '1\n2\n4\n5\n6',
                context,
              ),
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
