import 'package:flutter/material.dart';

void main() {
  runApp(GlobalVariablesPage());
}

class GlobalVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Global Variables',
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
                'Variables that are created outside of a function (as in all of the examples above) are known as global variables.',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 10.0),
              Text(
                'Global variables can be used by everyone, both inside of functions and outside.',
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
                      'x = "awesome"\n\n'
                      'def myfunc():\n'
                      '  print("Python is " + x)\n\n'
                      'myfunc()',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Python is awesome");
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
                'Global Variables Inside Functions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'If you create a variable with the same name inside a function, this variable will be local, and can only be used inside the function. The global variable with the same name will remain as it was, global and with the original value.',
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
                      'x = "awesome"\n\n'
                      'def myfunc():\n'
                      '  x = "fantastic"\n'
                      '  print("Python is " + x)\n\n'
                      'myfunc()\n\n'
                      'print("Python is " + x)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Python is fantastic\nPython is awesome");
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
                'The global Keyword',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Normally, when you create a variable inside a function, that variable is local, and can only be used inside that function.\n\nTo create a global variable inside a function, you can use the global keyword.',
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
                      'def myfunc():\n'
                      '  global x\n'
                      '  x = "fantastic"\n\n'
                      'myfunc()\n\n'
                      'print("Python is " + x)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Python is fantastic");
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
                'Also, use the global keyword if you want to change a global variable inside a function.',
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
                      'x = "awesome"\n\n'
                      'def myfunc():\n'
                      '  global x\n'
                      '  x = "fantastic"\n\n'
                      'myfunc()\n\n'
                      'print("Python is " + x)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Python is fantastic");
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
