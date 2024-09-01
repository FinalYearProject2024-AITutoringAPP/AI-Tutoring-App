import 'package:flutter/material.dart';

class JSDOMMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Methods',
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
            _buildSectionTitle('HTML DOM Methods'),
            _buildParagraph(
              'The HTML DOM methods are used to interact with elements in the DOM. Here are some commonly used methods for manipulating HTML elements:'
            ),
            _buildSectionTitle('getElementById()'),
            _buildParagraph(
              'The `getElementById()` method returns the element that has the ID attribute with the specified value. Example:\n'
              '```javascript\n'
              'document.getElementById("myElement");\n'
              '```\n'
              'This method is useful for retrieving elements when you know their ID.'
            ),
            _buildSectionTitle('getElementsByClassName()'),
            _buildParagraph(
              'The `getElementsByClassName()` method returns a live HTMLCollection of elements with the specified class name. Example:\n'
              '```javascript\n'
              'document.getElementsByClassName("myClass");\n'
              '```\n'
              'This method is useful for retrieving elements that share a common class name.'
            ),
            _buildSectionTitle('querySelector()'),
            _buildParagraph(
              'The `querySelector()` method returns the first element that matches a specified CSS selector. Example:\n'
              '```javascript\n'
              'document.querySelector(".myClass");\n'
              '```\n'
              'This method is useful for selecting the first element that matches a specific CSS selector.'
            ),
            _buildSectionTitle('querySelectorAll()'),
            _buildParagraph(
              'The `querySelectorAll()` method returns a static NodeList of elements that match a specified CSS selector. Example:\n'
              '```javascript\n'
              'document.querySelectorAll(".myClass");\n'
              '```\n'
              'This method is useful for selecting all elements that match a specific CSS selector.'
            ),
            _buildSectionTitle('createElement()'),
            _buildParagraph(
              'The `createElement()` method creates a new element node. Example:\n'
              '```javascript\n'
              'var newElement = document.createElement("div");\n'
              '```\n'
              'This method is useful for creating new elements dynamically.'
            ),
            _buildSectionTitle('appendChild()'),
            _buildParagraph(
              'The `appendChild()` method adds a new child node to an element as the last child node. Example:\n'
              '```javascript\n'
              'var parent = document.getElementById("parentElement");\n'
              'var newChild = document.createElement("div");\n'
              'parent.appendChild(newChild);\n'
              '```\n'
              'This method is useful for adding new elements to the DOM.'
            ),
            _buildSectionTitle('removeChild()'),
            _buildParagraph(
              'The `removeChild()` method removes a child node from an element. Example:\n'
              '```javascript\n'
              'var parent = document.getElementById("parentElement");\n'
              'var child = document.getElementById("childElement");\n'
              'parent.removeChild(child);\n'
              '```\n'
              'This method is useful for removing elements from the DOM.'
            ),
            _buildSectionTitle('innerHTML'),
            _buildParagraph(
              'The `innerHTML` property sets or returns the HTML content (inner HTML) of an element. Example:\n'
              '```javascript\n'
              'document.getElementById("myElement").innerHTML = "<p>New content</p>";\n'
              '```\n'
              'This property is useful for updating the HTML content of elements dynamically.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'To learn more about DOM methods and properties, you can visit the following resources:\n'
              '- [W3Schools DOM Methods](https://www.w3schools.com/js/js_htmldom_methods.asp)\n'
              '- [MDN Web Docs - DOM Methods](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Methods)'
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
