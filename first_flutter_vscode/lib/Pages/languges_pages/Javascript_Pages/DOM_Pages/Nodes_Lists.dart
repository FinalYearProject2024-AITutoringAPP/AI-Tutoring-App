import 'package:flutter/material.dart';

class JSDOMNodeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM NodeList',
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
              'In the HTML DOM, a NodeList is a collection of nodes that can be elements, text nodes, or comments. Unlike HTMLCollections, NodeLists are not always live and may not automatically update when the document changes.'
            ),
            _buildSectionTitle('The NodeList Object'),
            _buildParagraph(
              'The `NodeList` object represents a collection of nodes. There are different types of NodeLists, including static and live NodeLists. NodeLists can be retrieved using various DOM methods like `querySelectorAll()` and `childNodes`.'
            ),
            _buildSectionTitle('The querySelectorAll() Method'),
            _buildParagraph(
              'The `querySelectorAll()` method returns a static NodeList of elements matching a specified CSS selector(s).'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let nodes = document.querySelectorAll("p");\n'
              'nodes.forEach(node => {\n'
              '  console.log(node);\n'
              '});\n'
              '```\n'
              'This code retrieves all `<p>` elements in the document and logs each node to the console.'
            ),
            _buildSectionTitle('The childNodes Property'),
            _buildParagraph(
              'The `childNodes` property returns a NodeList of a node\'s child nodes, including element nodes, text nodes, and comments.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let parent = document.getElementById("parent");\n'
              'let nodes = parent.childNodes;\n'
              'nodes.forEach(node => {\n'
              '  console.log(node);\n'
              '});\n'
              '```\n'
              'This code retrieves all child nodes of the element with ID `parent` and logs each node to the console.'
            ),
            _buildSectionTitle('Static vs Live NodeLists'),
            _buildParagraph(
              'Static NodeLists, like those returned by `querySelectorAll()`, do not automatically update when the document changes. Live NodeLists, like those returned by `getElementsByTagName()` or `getElementsByClassName()`, are automatically updated to reflect changes in the document.'
            ),
            _buildSectionTitle('Iterating Over NodeLists'),
            _buildParagraph(
              'NodeLists can be iterated over using a `forEach` loop or by converting them to an array.'
            ),
            _buildCodeSnippet(
              'JavaScript Example (with forEach):\n'
              '```javascript\n'
              'let nodes = document.querySelectorAll("p");\n'
              'nodes.forEach(node => {\n'
              '  console.log(node);\n'
              '});\n'
              '```\n'
              'JavaScript Example (converting to array):\n'
              '```javascript\n'
              'let nodes = document.querySelectorAll("p");\n'
              'Array.from(nodes).forEach(node => {\n'
              '  console.log(node);\n'
              '});\n'
              '```\n'
              'These examples show how to iterate over NodeLists using `forEach` and by converting the NodeList to an array.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript HTML DOM NodeLists, refer to these resources:\n'
              '- [W3Schools - HTML DOM NodeList](https://www.w3schools.com/js/js_htmldom_nodelist.asp)\n'
              '- [MDN Web Docs - NodeList](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)'
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

