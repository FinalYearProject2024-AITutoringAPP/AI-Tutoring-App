import 'package:flutter/material.dart';

class JSObjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Objects',
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
            _buildHeading('JavaScript Objects'),
            _buildParagraph(
              'In JavaScript, objects are king. If you understand objects, you understand JavaScript.',
            ),
            _buildParagraph(
              'JavaScript variables can contain single values:',
            ),
            _buildCodeExample("let person = 'John';"),
            _buildParagraph(
              'Objects are variables too. But objects can contain many values.',
            ),
            _buildParagraph('This code assigns many values (name, age, and city) to a variable named person:'),
            _buildCodeExample(
              "const person = {\n"
              "  firstName: 'John',\n"
              "  lastName: 'Doe',\n"
              "  age: 50,\n"
              "  eyeColor: 'blue'\n"
              "};",
            ),
            _buildParagraph(
              'The values are written as name:value pairs (name and value separated by a colon).',
            ),
            _buildHeading('Object Properties'),
            _buildParagraph(
              'The name:values pairs in JavaScript objects are called properties:',
            ),
            _buildTable([
              {'Property': 'Value'},
              {'firstName': 'John'},
              {'lastName': 'Doe'},
              {'age': '50'},
              {'eyeColor': 'blue'},
            ]),
            _buildHeading('Accessing Object Properties'),
            _buildParagraph(
              'You can access object properties in two ways:',
            ),
            _buildList([
              'objectName.propertyName',
              'objectName["propertyName"]',
            ]),
            _buildParagraph('Example:'),
            _buildCodeExample(
              'person.firstName + " is " + person.age + " years old.";',
            ),
            _buildParagraph(
              'The expression above (person.firstName) will output "John".',
            ),
            _buildHeading('Object Methods'),
            _buildParagraph(
              'Objects can also have methods. Methods are actions that can be performed on objects.',
            ),
            _buildParagraph(
              'Methods are stored in properties as function definitions.',
            ),
            _buildCodeExample(
              "const person = {\n"
              "  firstName: 'John',\n"
              "  lastName: 'Doe',\n"
              "  id: 5566,\n"
              "  fullName: function() {\n"
              "    return this.firstName + ' ' + this.lastName;\n"
              "  }\n"
              "};",
            ),
            _buildParagraph(
              'The this keyword refers to the "owner" of the function.',
            ),
            _buildHeading('Accessing Object Methods'),
            _buildParagraph(
              'You access an object method with the following syntax:',
            ),
            _buildCodeExample('objectName.methodName()'),
            _buildParagraph('Example:'),
            _buildCodeExample('person.fullName();'),
            _buildParagraph(
              'If you access the fullName property, without (), it will return the function definition:',
            ),
            _buildCodeExample('person.fullName;'),
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

  Widget _buildTable(List<Map<String, String>> rows) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      children: rows.map((row) {
        return TableRow(
          children: row.entries.map((entry) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                entry.value,
                style: TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            item,
            style: TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
    );
  }
}
