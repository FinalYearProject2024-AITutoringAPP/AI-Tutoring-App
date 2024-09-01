import 'package:flutter/material.dart';

class JSObjectDisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Object Display',
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
            _buildHeading('JavaScript Object Display'),
            _buildParagraph(
              'Displaying a JavaScript object will output [object Object].',
            ),
            _buildHeading('Displaying Object Properties'),
            _buildParagraph(
              'One way to display the properties of a JavaScript object is to loop through the properties and output each property:',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  age: 50,\n'
              '  eyeColor: "blue"\n'
              '};\n\n'
              'let txt = "";\n'
              'for (let x in person) {\n'
              '  txt += person[x] + " ";\n'
              '}\n'
              'console.log(txt); // Outputs "John Doe 50 blue "',
            ),
            _buildHeading('Using Object.values()'),
            _buildParagraph(
              'The `Object.values()` method returns an array of a given object\'s own enumerable property values, in the same order as provided by a for...in loop.',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  age: 50,\n'
              '  eyeColor: "blue"\n'
              '};\n\n'
              'const myArray = Object.values(person);\n'
              'console.log(myArray); // Outputs ["John", "Doe", 50, "blue"]',
            ),
            _buildHeading('Using JSON.stringify()'),
            _buildParagraph(
              'The `JSON.stringify()` method converts a JavaScript object to a JSON string.',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  age: 50,\n'
              '  eyeColor: "blue"\n'
              '};\n\n'
              'const myString = JSON.stringify(person);\n'
              'console.log(myString); // Outputs "{"firstName":"John","lastName":"Doe","age":50,"eyeColor":"blue"}"',
            ),
            _buildHeading('Stringify Dates'),
            _buildParagraph(
              'When converting a JavaScript object to a string with `JSON.stringify()`, all Date objects are converted to strings:',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  name: "John",\n'
              '  today: new Date()\n'
              '};\n\n'
              'const myString = JSON.stringify(person);\n'
              'console.log(myString); // Outputs "{"name":"John","today":"2024-08-29T00:00:00.000Z"}"',
            ),
            _buildHeading('Stringify Functions'),
            _buildParagraph(
              'When converting a JavaScript object to a string, `JSON.stringify()` will remove any functions from the object.',
            ),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  age: 50,\n'
              '  eyeColor: "blue",\n'
              '  fullName: function() {\n'
              '    return this.firstName + " " + this.lastName;\n'
              '  }\n'
              '};\n\n'
              'const myString = JSON.stringify(person);\n'
              'console.log(myString); // Outputs "{"firstName":"John","lastName":"Doe","age":50,"eyeColor":"blue"}"',
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
