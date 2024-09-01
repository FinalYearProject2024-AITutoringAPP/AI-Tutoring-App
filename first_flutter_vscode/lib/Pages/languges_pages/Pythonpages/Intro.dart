import 'package:flutter/material.dart';

void main() {
  runApp(PythonIntroductionPage());
}

class PythonIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Python Introduction',
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
                'Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Why Learn Python?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Python is easy to learn and has a simple syntax. It is widely used for web development, data analysis, artificial intelligence, scientific computing, and more.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Features of Python',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Easy to Learn and Use\n'
                '2. High-Level Language\n'
                '3. Interpreted Language\n'
                '4. Dynamically Typed\n'
                '5. Extensive Standard Libraries\n'
                '6. Object-Oriented',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Python Syntax',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Python syntax is designed to be readable and straightforward. For example, a simple Python program to print "Hello, World!" is shown below:',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'print("Hello, World!")',
                'Hello, World!',
                context,
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
                'Comments in Python are created using the "#" symbol. Comments are not executed by the interpreter.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                '# This is a comment\n'
                'print("Hello, World!")',
                'Hello, World!',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Variables in Python',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables are containers for storing data values. Python has no command for declaring a variable. A variable is created the moment you first assign a value to it.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'x = 5\n'
                'y = "Hello, World!"\n'
                'print(x)\n'
                'print(y)',
                '5\nHello, World!',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Data Types in Python',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Python has various data types including integers, floating-point numbers, strings, and more.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Examples of Data Types:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),

              _buildCodeExample(
                'x = 5  # int\n'
                'y = 3.14  # float\n'
                'z = "Hello"  # string\n'
                'print(type(x))\n'
                'print(type(y))\n'
                'print(type(z))',
                'int\nfloat\nstr',
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
