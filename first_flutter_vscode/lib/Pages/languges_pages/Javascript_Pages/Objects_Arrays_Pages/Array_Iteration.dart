import 'package:flutter/material.dart';

class JSArrayIterationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Array Iteration',
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
            _buildHeading('JavaScript Array Iteration'),
            _buildParagraph(
              'There are several methods to iterate over arrays in JavaScript. These methods allow you to execute a function for each element of the array, or to perform other operations on the elements.',
            ),
            _buildHeading('For Loop'),
            _buildParagraph(
              'The `for` loop is one of the most common methods for iterating over arrays. It provides full control over the iteration process.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Mango"];\n\n'
              'for (let i = 0; i < fruits.length; i++) {\n'
              '  console.log(fruits[i]);\n'
              '}\n'
              '// Outputs:\n'
              '// Apple\n'
              '// Banana\n'
              '// Mango\n'
            ),
            _buildHeading('For...Of Loop'),
            _buildParagraph(
              'The `for...of` loop provides a more readable and convenient way to iterate over iterable objects such as arrays.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Mango"];\n\n'
              'for (const fruit of fruits) {\n'
              '  console.log(fruit);\n'
              '}\n'
              '// Outputs:\n'
              '// Apple\n'
              '// Banana\n'
              '// Mango\n'
            ),
            _buildHeading('ForEach Method'),
            _buildParagraph(
              'The `forEach()` method executes a provided function once for each array element. It provides a more functional approach to iteration.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Mango"];\n\n'
              'fruits.forEach(fruit => {\n'
              '  console.log(fruit);\n'
              '});\n'
              '// Outputs:\n'
              '// Apple\n'
              '// Banana\n'
              '// Mango\n'
            ),
            _buildHeading('Map Method'),
            _buildParagraph(
              'The `map()` method creates a new array with the results of calling a provided function on every element in the calling array.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4];\n\n'
              'const doubled = numbers.map(number => number * 2);\n'
              'console.log(doubled);\n'
              '// Outputs: [2, 4, 6, 8]\n'
            ),
            _buildHeading('Filter Method'),
            _buildParagraph(
              'The `filter()` method creates a new array with all elements that pass the test implemented by the provided function.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4, 5];\n\n'
              'const even = numbers.filter(number => number % 2 === 0);\n'
              'console.log(even);\n'
              '// Outputs: [2, 4]\n'
            ),
            _buildHeading('Reduce Method'),
            _buildParagraph(
              'The `reduce()` method executes a reducer function (that you provide) on each element of the array, resulting in a single output value.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4];\n\n'
              'const sum = numbers.reduce((total, number) => total + number, 0);\n'
              'console.log(sum);\n'
              '// Outputs: 10\n'
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
