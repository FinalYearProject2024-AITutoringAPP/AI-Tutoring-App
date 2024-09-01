import 'package:flutter/material.dart';

class JSDOMCollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Collections',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Introduction'),
            _buildParagraph(
              'In the HTML DOM, collections are used to represent a group of nodes. Collections are live and automatically update when the document changes. Common collections include `getElementsByTagName`, `getElementsByClassName`, and `getElementsByName`.'
            ),
            _buildSectionTitle('The getElementsByTagName() Method'),
            _buildParagraph(
              'The `getElementsByTagName()` method returns a live HTMLCollection of elements with the given tag name.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elements = document.getElementsByTagName("p");\n'
              'console.log(elements);\n'
              '```\n'
              'This code retrieves all `<p>` elements in the document and logs them to the console.'
            ),
            _buildSectionTitle('The getElementsByClassName() Method'),
            _buildParagraph(
              'The `getElementsByClassName()` method returns a live HTMLCollection of elements with the given class name.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elements = document.getElementsByClassName("myClass");\n'
              'console.log(elements);\n'
              '```\n'
              'This code retrieves all elements with the class name `myClass` and logs them to the console.'
            ),
            _buildSectionTitle('The getElementsByName() Method'),
            _buildParagraph(
              'The `getElementsByName()` method returns a live NodeList of elements with the given name attribute.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elements = document.getElementsByName("myName");\n'
              'console.log(elements);\n'
              '```\n'
              'This code retrieves all elements with the name attribute `myName` and logs them to the console.'
            ),
            _buildSectionTitle('The HTMLCollection Object'),
            _buildParagraph(
              'The `HTMLCollection` object is a collection of HTML elements. It is live, meaning it updates automatically as the document changes. HTMLCollections can be accessed by index or by iterating over them.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elements = document.getElementsByTagName("div");\n'
              'for (let i = 0; i < elements.length; i++) {\n'
              '  console.log(elements[i]);\n'
              '}\n'
              '```\n'
              'This code iterates over all `<div>` elements and logs each one to the console.'
            ),
            _buildSectionTitle('The NodeList Object'),
            _buildParagraph(
              'The `NodeList` object is a collection of nodes, which may include elements, text nodes, and comments. Unlike HTMLCollections, NodeLists are not always live.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let nodes = document.querySelectorAll("p");\n'
              'nodes.forEach(node => {\n'
              '  console.log(node);\n'
              '});\n'
              '```\n'
              'This code retrieves all `<p>` nodes using `querySelectorAll` and logs each node to the console.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript HTML DOM collections, refer to these resources:\n'
              '- [W3Schools - HTML DOM Collections](https://www.w3schools.com/js/js_htmldom_collections.asp)\n'
              '- [MDN Web Docs - NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)\n'
              '- [MDN Web Docs - HTMLCollection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection)'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
