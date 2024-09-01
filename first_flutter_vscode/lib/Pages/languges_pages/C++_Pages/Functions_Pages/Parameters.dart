import 'package:flutter/material.dart';

class CplusplusParametersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Function Parameters',
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
        backgroundColor: Colors.blueGrey[900],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Function Parameters',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Passing Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'When you call a function, you can pass data to it in the form of parameters. Parameters act as placeholders for the actual values, known as arguments, which are provided when the function is called.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void printSum(int a, int b) {\n  cout << "Sum: " << a + b << endl;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Default Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can provide default values for function parameters. If the caller does not provide a value for a parameter, the default value is used.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void printMessage(string msg = "Hello") {\n  cout << msg << endl;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Multiple Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Functions in C++ can accept multiple parameters. They are separated by commas in the function declaration and definition.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void displayInfo(string name, int age) {\n  cout << "Name: " << name << ", Age: " << age << endl;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Return Values',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Functions can return a value to the caller. The return type is specified in the function declaration and definition.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int add(int a, int b) {\n  return a + b;\n}\n\nint main() {\n  int result = add(10, 5);\n  cout << "Result: " << result;\n  return 0;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Reference Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Reference parameters allow a function to modify the argument used to call the function. They are declared using the & symbol.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void increment(int &value) {\n  value++;\n}\n\nint main() {\n  int num = 5;\n  increment(num);\n  cout << "Num: " << num;\n  return 0;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Array Parameters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can pass arrays to functions. The function receives a pointer to the first element of the array.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void printArray(int arr[], int size) {\n  for (int i = 0; i < size; i++) {\n    cout << arr[i] << " "; \n  }\n  cout << endl;\n}\n\nint main() {\n  int numbers[] = {1, 2, 3, 4, 5};\n  printArray(numbers, 5);\n  return 0;\n}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
