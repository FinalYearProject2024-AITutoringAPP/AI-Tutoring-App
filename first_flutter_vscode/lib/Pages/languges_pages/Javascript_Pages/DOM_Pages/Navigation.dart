import 'package:flutter/material.dart';

class JSDOMNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Navigation',
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
              'The HTML DOM (Document Object Model) provides a way to navigate and manipulate the structure of an HTML document. JavaScript can be used to access and modify the various elements of the DOM.'
            ),
            _buildSectionTitle('Navigating the DOM'),
            _buildParagraph(
              'You can navigate the DOM tree using various properties of DOM elements. The most common properties used for navigation are `parentNode`, `childNodes`, `firstChild`, `lastChild`, and `nextSibling`.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let parent = document.getElementById("myElement").parentNode;\n'
              'let children = document.getElementById("myElement").childNodes;\n'
              'let firstChild = document.getElementById("myElement").firstChild;\n'
              'let lastChild = document.getElementById("myElement").lastChild;\n'
              'let nextSibling = document.getElementById("myElement").nextSibling;\n'
              '```\n'
              'In this example, different properties are used to navigate the DOM tree from the element with ID "myElement".'
            ),
            _buildSectionTitle('Accessing Elements'),
            _buildParagraph(
              'You can access and modify elements in the DOM using methods such as `getElementById`, `getElementsByClassName`, `getElementsByTagName`, and `querySelector`.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let elementById = document.getElementById("myElement");\n'
              'let elementsByClass = document.getElementsByClassName("myClass");\n'
              'let elementsByTag = document.getElementsByTagName("div");\n'
              'let elementByQuery = document.querySelector(".myClass");\n'
              '```\n'
              'This code shows how to access elements using different DOM methods.'
            ),
            _buildSectionTitle('Modifying Elements'),
            _buildParagraph(
              'You can modify the content and attributes of DOM elements using properties such as `innerHTML`, `innerText`, `textContent`, and methods like `setAttribute` and `removeAttribute`.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let element = document.getElementById("myElement");\n'
              'element.innerHTML = "New content";\n'
              'element.setAttribute("data-info", "value");\n'
              'element.removeAttribute("data-info");\n'
              '```\n'
              'This example demonstrates how to change the content and attributes of an element.'
            ),
            _buildSectionTitle('Traversal Methods'),
            _buildParagraph(
              'JavaScript provides methods to traverse the DOM tree, such as `parentElement`, `children`, `previousElementSibling`, and `nextElementSibling`. These methods help navigate the DOM more efficiently.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'let parentElement = document.getElementById("myElement").parentElement;\n'
              'let children = document.getElementById("myElement").children;\n'
              'let previousSibling = document.getElementById("myElement").previousElementSibling;\n'
              'let nextSibling = document.getElementById("myElement").nextElementSibling;\n'
              '```\n'
              'In this example, different traversal methods are used to navigate the DOM tree around the element with ID "myElement".'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript DOM navigation, refer to these resources:\n'
              '- [W3Schools - HTML DOM Navigation](https://www.w3schools.com/js/js_htmldom_navigation.asp)\n'
              '- [MDN Web Docs - Document Object Model (DOM)](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)'
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
