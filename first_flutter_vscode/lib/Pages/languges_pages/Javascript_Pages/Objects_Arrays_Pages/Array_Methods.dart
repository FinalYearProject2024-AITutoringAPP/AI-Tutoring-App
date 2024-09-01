import 'package:flutter/material.dart';

class JSArrayMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Array Methods',
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
            _buildHeading('JavaScript Array Methods'),
            _buildParagraph(
              'JavaScript provides several built-in methods for arrays, which allow you to manipulate and work with array data. These methods are essential for managing and processing arrays efficiently.',
            ),
            _buildHeading('Array.push()'),
            _buildParagraph(
              'The `push()` method adds one or more elements to the end of an array and returns the new length of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana"];\n\n'
              'fruits.push("Cherry");\n'
              'console.log(fruits); // Outputs: ["Apple", "Banana", "Cherry"]\n'
            ),
            _buildHeading('Array.pop()'),
            _buildParagraph(
              'The `pop()` method removes the last element from an array and returns that element. This method changes the length of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'const last = fruits.pop();\n'
              'console.log(fruits); // Outputs: ["Apple", "Banana"]\n'
              'console.log(last);  // Outputs: "Cherry"\n'
            ),
            _buildHeading('Array.shift()'),
            _buildParagraph(
              'The `shift()` method removes the first element from an array and returns that element. This method changes the length of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'const first = fruits.shift();\n'
              'console.log(fruits); // Outputs: ["Banana", "Cherry"]\n'
              'console.log(first);  // Outputs: "Apple"\n'
            ),
            _buildHeading('Array.unshift()'),
            _buildParagraph(
              'The `unshift()` method adds one or more elements to the beginning of an array and returns the new length of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Banana", "Cherry"];\n\n'
              'fruits.unshift("Apple");\n'
              'console.log(fruits); // Outputs: ["Apple", "Banana", "Cherry"]\n'
            ),
            _buildHeading('Array.slice()'),
            _buildParagraph(
              'The `slice()` method returns a shallow copy of a portion of an array into a new array object selected from `start` to `end` (end not included) where `start` and `end` represent the index of the array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry", "Date"];\n\n'
              'const citrus = fruits.slice(1, 3);\n'
              'console.log(citrus); // Outputs: ["Banana", "Cherry"]\n'
            ),
            _buildHeading('Array.splice()'),
            _buildParagraph(
              'The `splice()` method changes the contents of an array by removing or replacing existing elements and/or adding new elements in place.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'fruits.splice(1, 1, "Blueberry", "Coconut");\n'
              'console.log(fruits); // Outputs: ["Apple", "Blueberry", "Coconut", "Cherry"]\n'
            ),
            _buildHeading('Array.concat()'),
            _buildParagraph(
              'The `concat()` method is used to merge two or more arrays into a single array. This method does not change the existing arrays but returns a new array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana"];\n'
              'const vegetables = ["Carrot", "Potato"];\n\n'
              'const food = fruits.concat(vegetables);\n'
              'console.log(food); // Outputs: ["Apple", "Banana", "Carrot", "Potato"]\n'
            ),
            _buildHeading('Array.join()'),
            _buildParagraph(
              'The `join()` method joins all elements of an array into a single string. You can specify a separator to use between elements.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'const fruitString = fruits.join(", ");\n'
              'console.log(fruitString); // Outputs: "Apple, Banana, Cherry"\n'
            ),
            _buildHeading('Array.reverse()'),
            _buildParagraph(
              'The `reverse()` method reverses the elements of an array in place and returns the reversed array.',
            ),
            _buildCodeExample(
              'const fruits = ["Apple", "Banana", "Cherry"];\n\n'
              'fruits.reverse();\n'
              'console.log(fruits); // Outputs: ["Cherry", "Banana", "Apple"]\n'
            ),
            _buildHeading('Array.sort()'),
            _buildParagraph(
              'The `sort()` method sorts the elements of an array in place and returns the sorted array. By default, the elements are sorted as strings.',
            ),
            _buildCodeExample(
              'const numbers = [4, 2, 5, 1, 3];\n\n'
              'numbers.sort();\n'
              'console.log(numbers); // Outputs: [1, 2, 3, 4, 5]\n'
            ),
            _buildHeading('Array.map()'),
            _buildParagraph(
              'The `map()` method creates a new array with the results of calling a provided function on every element in the calling array.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4];\n\n'
              'const doubled = numbers.map(x => x * 2);\n'
              'console.log(doubled); // Outputs: [2, 4, 6, 8]\n'
            ),
            _buildHeading('Array.filter()'),
            _buildParagraph(
              'The `filter()` method creates a new array with all elements that pass the test implemented by the provided function.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4, 5];\n\n'
              'const evenNumbers = numbers.filter(x => x % 2 === 0);\n'
              'console.log(evenNumbers); // Outputs: [2, 4]\n'
            ),
            _buildHeading('Array.reduce()'),
            _buildParagraph(
              'The `reduce()` method executes a reducer function (that you provide) on each element of the array, resulting in a single output value.',
            ),
            _buildCodeExample(
              'const numbers = [1, 2, 3, 4];\n\n'
              'const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);\n'
              'console.log(sum); // Outputs: 10\n'
            ),
            _buildHeading('Array.find()'),
            _buildParagraph(
              'The `find()` method returns the first element in the array that satisfies the provided testing function. Otherwise, it returns `undefined`.',
            ),
            _buildCodeExample(
              'const numbers = [4, 9, 16, 25];\n\n'
              'const firstSquare = numbers.find(num => num > 10);\n'
              'console.log(firstSquare); // Outputs: 16\n'
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
