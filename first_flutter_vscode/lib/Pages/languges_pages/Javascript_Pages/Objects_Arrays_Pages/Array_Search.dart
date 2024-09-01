import 'package:flutter/material.dart';

class JSArraySearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Array Search',
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
            _buildHeading('JavaScript Array Search'),
            _buildParagraph(
              'JavaScript arrays come with several methods for searching through their contents. These methods help you find specific elements or determine if they exist within an array.',
            ),
            _buildHeading('Array.indexOf()'),
            _buildParagraph(
              'The `indexOf()` method returns the first index at which a given element can be found in the array, or `-1` if it is not present.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'const index = fruits.indexOf("Banana");\n'
              'console.log(index); // Outputs: 1\n'
              'console.log(fruits.indexOf("Orange")); // Outputs: -1\n'
            ),
            _buildHeading('Array.lastIndexOf()'),
            _buildParagraph(
              'The `lastIndexOf()` method returns the last index at which a given element can be found in the array, or `-1` if it is not present.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry", "Banana"];\n\n'
              'const lastIndex = fruits.lastIndexOf("Banana");\n'
              'console.log(lastIndex); // Outputs: 3\n'
              'console.log(fruits.lastIndexOf("Apple")); // Outputs: 0\n'
            ),
            _buildHeading('Array.includes()'),
            _buildParagraph(
              'The `includes()` method determines whether an array contains a certain element, returning `true` or `false` as appropriate.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'console.log(fruits.includes("Banana")); // Outputs: true\n'
              'console.log(fruits.includes("Orange")); // Outputs: false\n'
            ),
            _buildHeading('Array.find()'),
            _buildParagraph(
              'The `find()` method returns the first element in the array that satisfies the provided testing function. Otherwise, it returns `undefined`.',
            ),
            _buildCodeExample(
              'const numbers = [4, 9, 16, 25];\n\n'
              'const found = numbers.find(num => num > 10);\n'
              'console.log(found); // Outputs: 16\n'
            ),
            _buildHeading('Array.findIndex()'),
            _buildParagraph(
              'The `findIndex()` method returns the index of the first element in the array that satisfies the provided testing function. Otherwise, it returns `-1`.',
            ),
            _buildCodeExample(
              'const numbers = [4, 9, 16, 25];\n\n'
              'const index = numbers.findIndex(num => num > 10);\n'
              'console.log(index); // Outputs: 2\n'
            ),
            _buildHeading('Array.some()'),
            _buildParagraph(
              'The `some()` method tests whether at least one element in the array passes the test implemented by the provided function. It returns `true` if the function returns `true` for any element, otherwise `false`.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4, 5];\n\n'
              'const hasEven = numbers.some(num => num % 2 === 0);\n'
              'console.log(hasEven); // Outputs: true\n'
            ),
            _buildHeading('Array.every()'),
            _buildParagraph(
              'The `every()` method tests whether all elements in the array pass the test implemented by the provided function. It returns `true` if the function returns `true` for every element, otherwise `false`.',
            ),
            _buildCodeExample(
              'const numbers = [2, 4, 6, 8];\n\n'
              'const allEven = numbers.every(num => num % 2 === 0);\n'
              'console.log(allEven); // Outputs: true\n'
            ),
            _buildHeading('Array.filter()'),
            _buildParagraph(
              'The `filter()` method creates a new array with all elements that pass the test implemented by the provided function.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4, 5];\n\n'
              'const evenNumbers = numbers.filter(num => num % 2 === 0);\n'
              'console.log(evenNumbers); // Outputs: [2, 4]\n'
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
