import 'package:flutter/material.dart';

class JSObjectPropertiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Object Properties',
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
            _buildHeading('JavaScript Object Properties'),
            _buildParagraph(
              'The properties of an object define the characteristics of the object. They are defined as name:value pairs, where the name is a string (also called a key), and the value can be any data type.',
            ),
            _buildHeading('Accessing JavaScript Properties'),
            _buildParagraph(
              'You can access the properties of an object in two ways:',
            ),
            _buildList([
              'objectName.propertyName',
              'objectName["propertyName"]',
            ]),
            _buildParagraph('Example:'),
            _buildCodeExample(
              'const person = {\n'
              '  firstName: "John",\n'
              '  lastName: "Doe",\n'
              '  age: 50,\n'
              '  eyeColor: "blue"\n'
              '};\n\n'
              'person.lastName; // "Doe"\n'
              'person["age"]; // 50',
            ),
            _buildHeading('JavaScript for...in Loop'),
            _buildParagraph(
              'The JavaScript for...in statement loops through the properties of an object.',
            ),
            _buildParagraph('Syntax:'),
            _buildCodeExample(
              'for (let key in object) {\n'
              '  // code block to be executed\n'
              '}',
            ),
            _buildParagraph('Example:'),
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
              '}\n\n'
              'console.log(txt); // Outputs "John Doe 50 blue "',
            ),
            _buildHeading('Adding New Properties'),
            _buildParagraph(
              'You can add new properties to an existing object by simply giving it a value.',
            ),
            _buildCodeExample(
              'person.nationality = "English";',
            ),
            _buildParagraph(
              'Now the person object will have a new property nationality with the value "English".',
            ),
            _buildHeading('Deleting Properties'),
            _buildParagraph(
              'The delete keyword removes a property from an object.',
            ),
            _buildCodeExample(
              'delete person.age;',
            ),
            _buildParagraph(
              'After deletion, the property is undefined:',
            ),
            _buildCodeExample(
              'console.log(person.age); // Outputs undefined',
            ),
            _buildHeading('Property Attributes'),
            _buildParagraph(
              'All JavaScript properties have attributes. These attributes define how the property can be accessed (is it read-only?), how it can be enumerated, and how it can be configured.',
            ),
            _buildTable([
              {'Attribute': 'Description'},
              {'value': 'The value of the property.'},
              {'writable': 'If true, the value can be changed.'},
              {'enumerable': 'If true, the property is enumerated in a loop.'},
              {'configurable': 'If true, the property can be deleted.'},
            ]),
            _buildHeading('Object.defineProperty()'),
            _buildParagraph(
              'To add getters and setters to an object, or to change the attributes of an existing property, use the Object.defineProperty() method.',
            ),
            _buildCodeExample(
              'Object.defineProperty(person, "fullName", {\n'
              '  get: function() {return this.firstName + " " + this.lastName;}\n'
              '});',
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
