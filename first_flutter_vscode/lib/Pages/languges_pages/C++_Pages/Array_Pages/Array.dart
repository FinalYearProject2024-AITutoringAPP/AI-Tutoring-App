import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusArrayPage());
}

class CplusplusArrayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Arrays',
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
                'C++ Arrays',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'To declare an array, define the variable type, specify the array name, and specify the number of elements it should store:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              _buildCodeSnippet('int myNumbers[5] = {10, 20, 30, 40, 50};'),
              SizedBox(height: 20.0),

              Text(
                'Access the Elements of an Array',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You access an array element by referring to the index number:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'cout << myNumbers[0];  // Outputs 10\n'
                'cout << myNumbers[1];  // Outputs 20',
              ),
              SizedBox(height: 20.0),

              Text(
                'Change an Array Element',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'To change the value of a specific element, refer to the index number:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet('myNumbers[0] = 15;'),
              SizedBox(height: 20.0),

              Text(
                'Loop Through an Array',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You can loop through the array elements with a for loop:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'for (int i = 0; i < 5; i++) {\n'
                '  cout << myNumbers[i] << endl;\n'
                '}',
              ),
              SizedBox(height: 20.0),

              Text(
                'Arrays and Functions',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You can also pass arrays to functions. To pass an array to a function, specify the name of the array without brackets:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'void myFunction(int myNumbers[5]) {\n'
                '  for (int i = 0; i < 5; i++) {\n'
                '    cout << myNumbers[i] << endl;\n'
                '  }\n'
                '}',
              ),
              SizedBox(height: 20.0),

              Text(
                'Omit Array Size',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You don\'t have to specify the size of the array. However, if you omit the size, it is required that you include the elements inside curly brackets { }:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet('int myNumbers[] = {10, 20, 30, 40, 50};'),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.black87,
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16.0,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
