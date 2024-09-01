import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusOmitArraysSizePage());
}

class CplusplusOmitArraysSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Omit Array Size',
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
                'C++ Omit Array Size',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'In C++, when you initialize an array, you don\'t have to specify the size of the array. The compiler can automatically calculate the size based on the number of elements you provide.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                'int myNumbers[] = {25, 50, 75, 100};\n\n'
                'cout << myNumbers[0] << "\\n";\n'
                'cout << myNumbers[1] << "\\n";\n'
                'cout << myNumbers[2] << "\\n";\n'
                'cout << myNumbers[3] << "\\n";',
              ),
              SizedBox(height: 20.0),

              Text(
                'Explanation',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'In this example, the array `myNumbers` is initialized with 4 elements. The size of the array is automatically set to 4. The array elements are accessed and printed using their index positions.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'The output of this code will be:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              _buildCodeSnippet(
                '25\n50\n75\n100',
              ),
              SizedBox(height: 20.0),

              Text(
                'Omitting the Size:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'When you omit the size of the array, the compiler automatically calculates it based on the number of elements. This makes your code more flexible and easier to maintain.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
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
