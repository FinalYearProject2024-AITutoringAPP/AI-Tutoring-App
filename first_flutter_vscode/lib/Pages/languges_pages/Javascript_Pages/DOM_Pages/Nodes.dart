import 'package:flutter/material.dart';

class JSDOMNodesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Nodes',
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
              'The HTML DOM (Document Object Model) represents the structure of an HTML document as a tree of nodes. Each node represents a part of the document, such as an element, attribute, or text.'
            ),
            _buildSectionTitle('Node Types'),
            _buildParagraph(
              'There are several types of nodes in the DOM, including:\n'
              '- **Element Nodes**: Represent HTML elements (e.g., `<div>`, `<p>`).\n'
              '- **Attribute Nodes**: Represent attributes of HTML elements (e.g., `class`, `id`).\n'
              '- **Text Nodes**: Represent the text content within an HTML element.\n'
              '- **Comment Nodes**: Represent comments in the HTML code.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elementNode = document.getElementById("myElement");\n'
              'let textNode = elementNode.firstChild;\n'
              'let commentNode = document.createComment("This is a comment");\n'
              '```\n'
              'This code shows how to access different types of nodes within the DOM.'
            ),
            _buildSectionTitle('Node Properties'),
            _buildParagraph(
              'Nodes have various properties that can be accessed or modified, such as:\n'
              '- **nodeName**: The name of the node (e.g., `DIV`, `P`).\n'
              '- **nodeValue**: The value of the node (e.g., text content, attribute value).\n'
              '- **nodeType**: The type of the node (e.g., `1` for element nodes, `3` for text nodes).\n'
              '- **parentNode**: The parent of the current node.\n'
              '- **childNodes**: A collection of the node\'s children.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let node = document.getElementById("myElement");\n'
              'console.log(node.nodeName);\n'
              'console.log(node.nodeValue);\n'
              'console.log(node.nodeType);\n'
              'console.log(node.parentNode);\n'
              'console.log(node.childNodes);\n'
              '```\n'
              'This code demonstrates how to access various properties of a DOM node.'
            ),
            _buildSectionTitle('Creating and Removing Nodes'),
            _buildParagraph(
              'You can create new nodes and remove existing ones using methods such as `createElement`, `createTextNode`, `appendChild`, and `removeChild`.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let newElement = document.createElement("div");\n'
              'let newText = document.createTextNode("Hello, World!");\n'
              'newElement.appendChild(newText);\n'
              'document.body.appendChild(newElement);\n'
              'document.body.removeChild(newElement);\n'
              '```\n'
              'This example demonstrates how to create a new element node, add text to it, append it to the document, and then remove it.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript HTML DOM nodes, refer to these resources:\n'
              '- [W3Schools - HTML DOM Nodes](https://www.w3schools.com/js/js_htmldom_nodes.asp)\n'
              '- [MDN Web Docs - Node](https://developer.mozilla.org/en-US/docs/Web/API/Node)'
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