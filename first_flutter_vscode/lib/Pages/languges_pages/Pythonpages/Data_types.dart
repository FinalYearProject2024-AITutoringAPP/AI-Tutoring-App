import 'package:flutter/material.dart';

void main() {
  runApp(PythonDataTypesPage());
}

class PythonDataTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            ' Data Types',
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
                'In programming, data type is an important concept.\n'
                'Variables can store data of different types, and different types can do different things.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              
              // Built-in Data Types section
              Text(
                'Python has the following data types built-in by default, in these categories:',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Data Types Table
              _buildDataTypesTable(),
              SizedBox(height: 20.0),

              // Getting the Data Type section
              Text(
                'Getting the Data Type',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can get the data type of any object by using the type() function:',
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
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'x = 5\n'
                      'print(type(x))',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        _showOutput(context, "<class 'int'>");
                      },
                      child: Text('Try it Yourself'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              // Setting the Data Type section
              Text(
                'Setting the Data Type',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'In Python, the data type is set when you assign a value to a variable:',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              // Data Type Examples
              _buildDataTypeExamples(),
              SizedBox(height: 20.0),

              // Text to summarize Python Data Types
              Text(
                'Data Types in Python are categorized into several types, each type serving a different purpose.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataTypesTable() {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTableRow('Text Type:', 'str'),
          _buildTableRow('Numeric Types:', 'int, float, complex'),
          _buildTableRow('Sequence Types:', 'list, tuple, range'),
          _buildTableRow('Mapping Type:', 'dict'),
          _buildTableRow('Set Types:', 'set, frozenset'),
          _buildTableRow('Boolean Type:', 'bool'),
          _buildTableRow('Binary Types:', 'bytes, bytearray, memoryview'),
        ],
      ),
    );
  }

  Widget _buildTableRow(String typeCategory, String types) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20, fontFamily: 'Arial', color: Colors.black),
          children: [
            TextSpan(text: typeCategory, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' $types'),
          ],
        ),
      ),
    );
  }

  Widget _buildDataTypeExamples() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExample('x = "Hello World"', 'str'),
        _buildExample('x = 20', 'int'),
        _buildExample('x = 20.5', 'float'),
        _buildExample('x = 1j', 'complex'),
        _buildExample('x = ["apple", "banana", "cherry"]', 'list'),
        _buildExample('x = ("apple", "banana", "cherry")', 'tuple'),
        _buildExample('x = range(6)', 'range'),
        _buildExample('x = {"name" : "John", "age" : 36}', 'dict'),
        _buildExample('x = {"apple", "banana", "cherry"}', 'set'),
        _buildExample('x = frozenset({"apple", "banana", "cherry"})', 'frozenset'),
        _buildExample('x = True', 'bool'),
        _buildExample('x = b"Hello"', 'bytes'),
        _buildExample('x = bytearray(5)', 'bytearray'),
        _buildExample('x = memoryview(bytes(5))', 'memoryview'),
      ],
    );
  }

  Widget _buildExample(String code, String dataType) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey[100],
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
            Text(
              'Data Type: $dataType',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Arial',
                color: Colors.black,
              ),
            ),
          ],
        ),
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
