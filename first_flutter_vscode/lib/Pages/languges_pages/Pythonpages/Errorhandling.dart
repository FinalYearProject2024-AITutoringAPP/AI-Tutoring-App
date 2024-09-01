import 'package:flutter/material.dart';

void main() {
  runApp(ErrorHandlingPage());
}

class ErrorHandlingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Error Handling',
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
                ' Try Except',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The try block lets you test a block of code for errors. The except block lets you handle the error. The else block lets you execute code when there is no error. The finally block lets you execute code, regardless of the result of the try- and except blocks.',
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
                      'try:\n'
                      '    print(x)\n'
                      'except:\n'
                      '    print("An exception occurred")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "An exception occurred");
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
                'Many Exceptions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can define as many exception blocks as you want, e.g., if you want to execute a special block of code for a special kind of error:',
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
                      'try:\n'
                      '    print(x)\n'
                      'except NameError:\n'
                      '    print("Variable x is not defined")\n'
                      'except:\n'
                      '    print("Something else went wrong")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Variable x is not defined");
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
                'You can use the else keyword to define a block of code to be executed if no errors were raised:',
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
                      'try:\n'
                      '    print("Hello")\n'
                      'except:\n'
                      '    print("Something went wrong")\n'
                      'else:\n'
                      '    print("Nothing went wrong")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Hello\nNothing went wrong");
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
                'Finally',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The finally block, if specified, will be executed regardless if the try block raises an error or not:',
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
                      'try:\n'
                      '    print(x)\n'
                      'except:\n'
                      '    print("Something went wrong")\n'
                      'finally:\n'
                      '    print("The \'try except\' is finished")',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Something went wrong\nThe 'try except' is finished");
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
