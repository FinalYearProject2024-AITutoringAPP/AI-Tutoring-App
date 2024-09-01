import 'package:flutter/material.dart';

class JSArrayConstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Arrays with const',
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
            _buildHeading('JavaScript Arrays with const'),
            _buildParagraph(
              'In JavaScript, you can use `const` to declare arrays that should not be reassigned. This means that the variable identifier cannot be reassigned to a different array, but the array elements can still be modified.',
            ),
            _buildHeading('Declaring Arrays with const'),
            _buildParagraph(
              'When you declare an array with `const`, you are declaring that the array reference cannot be changed. However, you can still modify the contents of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Mango"];\n\n'
              'fruits[0] = "Blueberry"; // This is allowed\n'
              'fruits.push("Orange"); // This is also allowed\n'
              'console.log(fruits);\n'
              '// Outputs: ["Blueberry", "Banana", "Mango", "Orange"]\n'
            ),
            _buildHeading('Attempting to Reassign the Array'),
            _buildParagraph(
              'Reassigning the array to a new array will cause an error. The `const` keyword ensures that the reference to the array is immutable.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Mango"];\n\n'
              'fruits = ["Pineapple", "Grapes"]; // This will cause an error\n'
              'console.log(fruits);\n'
              '// Uncaught TypeError: Assignment to constant variable.\n'
            ),
            _buildHeading('Best Practices'),
            _buildParagraph(
              'Use `const` for arrays that you do not plan to reassign, but where you might still want to modify the contents. This ensures the reference remains constant and prevents accidental reassignment.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3];\n\n'
              'numbers[1] = 42; // Modify an element\n'
              'numbers.push(4); // Add an element\n'
              'console.log(numbers);\n'
              '// Outputs: [1, 42, 3, 4]\n'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      color: Colors.black,
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
