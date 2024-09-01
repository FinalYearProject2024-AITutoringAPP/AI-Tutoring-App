import 'package:flutter/material.dart';

void main() {
  runApp(PythonSyntaxPage());
}

class PythonSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Syntax',
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
              
              SizedBox(height: 10.0),
              Text(
                'Python syntax can be executed by writing directly in the Command Line:',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),

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
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '>>> print("Hello, World!")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Hello, World!");
                      },
                      child: Text('Try it Yourself'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        textStyle: TextStyle(fontFamily: 'Arial', fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Python Indentation',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Indentation refers to the spaces at the beginning of a code line.\n\nWhere in other programming languages the indentation in code is for readability only, the indentation in Python is very important.\n\nPython uses indentation to indicate a block of code.',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),

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
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'if 5 > 2:\n'
                      '  print("Five is greater than two!")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Five is greater than two!");
                      },
                      child: Text('Try it Yourself'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        textStyle: TextStyle(fontFamily: 'Arial', fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Python Variables',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'In Python, variables are created when you assign a value to it:',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),

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
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'x = 5\n'
                      'y = "Hello, World!"\n'
                      'print(x)\n'
                      'print(y)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "5\nHello, World!");
                      },
                      child: Text('Try it Yourself'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        textStyle: TextStyle(fontFamily: 'Arial', fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Comments in Python',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Python has commenting capability for the purpose of in-code documentation.\n\nComments start with a #, and Python will render the rest of the line as a comment:',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),

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
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '# This is a comment\n'
                      'print("Hello, World!")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Hello, World!");
                      },
                      child: Text('Try it Yourself'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        textStyle: TextStyle(fontFamily: 'Arial', fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _executeCode(BuildContext context, String output) {
    // Simulate code execution by displaying a dialog with the output
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
