import 'package:flutter/material.dart';

class JSArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Arrays',
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
            _buildHeading('JavaScript Arrays'),
            _buildParagraph(
              'In JavaScript, an array is a special variable that can hold more than one value at a time. Arrays are used to store multiple values in a single variable. They are ordered lists and can contain values of any type, including other arrays.',
            ),
            _buildHeading('Creating Arrays'),
            _buildParagraph(
              'You can create an array using either the `Array` constructor or the array literal notation. Here are some examples:',
            ),
            _buildCodeExample(
              '// Using array literal notation\n'
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              '// Using the Array constructor\n'
              'const numbers = new Array(10, 20, 30);\n'
              'const emptyArray = new Array(3); // Array with 3 empty slots\n'
            ),
            _buildHeading('Accessing Array Elements'),
            _buildParagraph(
              'Array elements are accessed by their index, which starts at 0. Here is an example of accessing and modifying array elements:',
            ),
            _buildCodeExample(
              'const colors = ["Red", "Green", "Blue"];\n\n'
              'console.log(colors[0]); // Outputs: Red\n'
              'console.log(colors[1]); // Outputs: Green\n'
              'colors[2] = "Yellow";\n'
              'console.log(colors); // Outputs: ["Red", "Green", "Yellow"]\n'
            ),
            _buildHeading('Array Length'),
            _buildParagraph(
              'You can get the number of elements in an array using the `length` property. Here is an example:',
            ),
            _buildCodeExample(
              'const animals = ["Lion", "Tiger", "Bear"];\n\n'
              'console.log(animals.length); // Outputs: 3\n'
            ),
            _buildHeading('Array Methods'),
            _buildParagraph(
              'JavaScript arrays come with a variety of built-in methods that make working with arrays easier. Some of the commonly used methods include:',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4, 5];\n\n'
              '// Adding an element to the end of an array\n'
              'numbers.push(6);\n' // [1, 2, 3, 4, 5, 6]
              'console.log(numbers);\n\n'
              '// Removing the last element from an array\n'
              'numbers.pop();\n' // [1, 2, 3, 4, 5]
              'console.log(numbers);\n\n'
              '// Adding an element to the beginning of an array\n'
              'numbers.unshift(0);\n' // [0, 1, 2, 3, 4, 5]
              'console.log(numbers);\n\n'
              '// Removing the first element from an array\n'
              'numbers.shift();\n' // [1, 2, 3, 4, 5]
              'console.log(numbers);\n\n'
              '// Creating a new array with elements from a portion of the original array\n'
              'const newNumbers = numbers.slice(1, 4);\n' // [2, 3, 4]
              'console.log(newNumbers);\n'
            ),
            _buildHeading('Array Iteration'),
            _buildParagraph(
              'You can iterate over array elements using loops such as `for`, `forEach`, or `for...of`. Here are some examples:',
            ),
            _buildCodeExample(
              '// Using for loop\n'
              'const fruits = ["Apple", "Banana", "Cherry"];\n'
              'for (let i = 0; i < fruits.length; i++) {\n'
              '  console.log(fruits[i]);\n'
              '}\n\n'
              '// Using forEach\n'
              'fruits.forEach(fruit => console.log(fruit));\n\n'
              '// Using for...of\n'
              'for (const fruit of fruits) {\n'
              '  console.log(fruit);\n'
              '}\n'
            ),
            _buildHeading('Multidimensional Arrays'),
            _buildParagraph(
              'JavaScript also supports multidimensional arrays, which are arrays of arrays. Here is an example:',
            ),
            _buildCodeExample(
              'const matrix = [\n'
              '  [1, 2, 3],\n'
              '  [4, 5, 6],\n'
              '  [7, 8, 9]\n'
              '];\n\n'
              'console.log(matrix[0][1]); // Outputs: 2\n' // Accessing the element in the first row, second column
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
