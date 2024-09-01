import 'package:flutter/material.dart';

class JSDOMIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM',
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
            _buildSectionTitle('HTML DOM'),
            _buildParagraph(
              'The HTML DOM (Document Object Model) is an interface that browsers use to interpret and manipulate HTML documents. It represents the structure of a document as a tree of objects, each representing a part of the document (elements, attributes, etc.). JavaScript can be used to access and modify the content, structure, and style of a document dynamically.'
            ),
            _buildSectionTitle('The HTML DOM Tree'),
            _buildParagraph(
              'The HTML DOM tree starts with the document object and branches out to represent all elements, attributes, and text in the document. Each element is represented as a node in this tree, and JavaScript can interact with these nodes to change the document dynamically.'
            ),
            _buildSectionTitle('Manipulating the DOM'),
            _buildParagraph(
              'JavaScript provides several methods to interact with the DOM. Some common methods include:\n'
              '- `getElementById()`: Retrieves an element by its ID.\n'
              '- `getElementsByClassName()`: Retrieves elements by their class name.\n'
              '- `querySelector()`: Retrieves the first element that matches a CSS selector.\n'
              '- `createElement()`: Creates a new element.\n'
              '- `appendChild()`: Adds a new child element to a parent element.\n'
              '- `removeChild()`: Removes a child element from a parent element.\n'
              '- `innerHTML`: Sets or gets the HTML content of an element.'
            ),
            _buildSectionTitle('Example'),
            _buildParagraph(
              'Here is a simple example of manipulating the DOM using JavaScript:\n'
              '<!DOCTYPE html>\n'
              '<html>\n'
              '<head>\n'
              '<title>DOM Example</title>\n'
              '</head>\n'
              '<body>\n'
              '<h1 id="demo">Hello World!</h1>\n'
              '<button onclick="changeText()">Change Text</button>\n'
              '<script>\n'
              'function changeText() {\n'
              '    document.getElementById("demo").innerHTML = "Text changed!";\n'
              '}\n'
              '</script>\n'
              '</body>\n'
              '</html>'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'To learn more about the HTML DOM and JavaScript, visit the following resources:\n'
              '- [W3Schools DOM Tutorial](https://www.w3schools.com/js/js_htmldom.asp)\n'
              '- [MDN Web Docs - DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)'
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
}
