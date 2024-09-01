import 'package:flutter/material.dart';

class JSArraySortPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Array Sort',
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
            _buildHeading('JavaScript Array Sort'),
            _buildParagraph(
              'The `sort()` method sorts the elements of an array in place and returns the sorted array. By default, the array elements are sorted as strings.',
            ),
            _buildHeading('Sorting Strings'),
            _buildParagraph(
              'When sorting an array of strings, the `sort()` method arranges the elements in alphabetical order.',
            ),
            _buildCodeExample(
              'const fruits = ["Banana", "Orange", "Apple", "Mango"];\n\n'
              'fruits.sort();\n'
              'console.log(fruits); // Outputs: ["Apple", "Banana", "Mango", "Orange"]\n'
            ),
            _buildHeading('Sorting Numbers'),
            _buildParagraph(
              'When sorting an array of numbers, the `sort()` method converts the numbers to strings, which may not yield the desired numerical order. To sort numbers correctly, you need to provide a compare function.',
            ),
            _buildCodeExample(
              'const numbers = [10, 5, 100, 50];\n\n'
              'numbers.sort((a, b) => a - b);\n'
              'console.log(numbers); // Outputs: [5, 10, 50, 100]\n'
            ),
            _buildHeading('Sorting Objects'),
            _buildParagraph(
              'To sort an array of objects, use a compare function that defines the sort order based on object properties.',
            ),
            _buildCodeExample(
              'const items = [\n'
              '  { name: "John", age: 30 },\n'
              '  { name: "Jane", age: 25 },\n'
              '  { name: "Alice", age: 35 }\n'
              '];\n\n'
              'items.sort((a, b) => a.age - b.age);\n'
              'console.log(items);\n'
              '// Outputs:\n'
              '// [\n'
              '//   { name: "Jane", age: 25 },\n'
              '//   { name: "John", age: 30 },\n'
              '//   { name: "Alice", age: 35 }\n'
              '// ]\n'
            ),
            _buildHeading('Sorting in Descending Order'),
            _buildParagraph(
              'To sort an array in descending order, reverse the comparison in the compare function.',
            ),
            _buildCodeExample(
              'const numbers = [10, 5, 100, 50];\n\n'
              'numbers.sort((a, b) => b - a);\n'
              'console.log(numbers); // Outputs: [100, 50, 10, 5]\n'
            ),
            _buildHeading('Sorting with LocaleCompare'),
            _buildParagraph(
              'For more control over string sorting, you can use the `localeCompare()` method, which compares two strings according to local language settings.',
            ),
            _buildCodeExample(
              'const names = ["Rémy", "Éric", "Åsa", "Älva"];\n\n'
              'names.sort((a, b) => a.localeCompare(b));\n'
              'console.log(names); // Outputs: ["Älva", "Åsa", "Éric", "Rémy"]\n'
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
