import 'package:flutter/material.dart';

void main() {
  runApp(AssignMultipleValuesPage());
}

class AssignMultipleValuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Assign Multiple Values',
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
                'Python allows you to assign values to multiple variables in one line:',
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
                      'x, y, z = "Orange", "Banana", "Cherry"\n'
                      'print(x)\n'
                      'print(y)\n'
                      'print(z)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Orange\nBanana\nCherry");
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
                'One Value to Multiple Variables',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'And you can assign the same value to multiple variables in one line:',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'x = y = z = "Orange"\n'
                      'print(x)\n'
                      'print(y)\n'
                      'print(z)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "Orange\nOrange\nOrange");
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
                'Unpack a Collection',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'If you have a collection of values in a list, tuple etc., Python allows you to extract the values into variables. This is called unpacking:',
                style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'fruits = ["apple", "banana", "cherry"]\n'
                      'x, y, z = fruits\n'
                      'print(x)\n'
                      'print(y)\n'
                      'print(z)',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _executeCode(context, "apple\nbanana\ncherry");
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
