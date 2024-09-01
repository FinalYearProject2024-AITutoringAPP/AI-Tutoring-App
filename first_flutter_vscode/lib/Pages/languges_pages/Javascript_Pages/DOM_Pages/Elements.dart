import 'package:flutter/material.dart';

class JSDOMElementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript DOM Elements',
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
            _buildSectionTitle('The HTML DOM Element Object'),
            _buildParagraph(
              'The `Element` object represents an HTML element in the DOM. Each HTML element in a web page is an instance of the `Element` object. The `Element` object provides various properties and methods to interact with the element.'
            ),
            _buildSectionTitle('Accessing Elements'),
            _buildParagraph(
              'You can access HTML elements using methods of the `document` object, such as `getElementById()`, `getElementsByClassName()`, and `getElementsByTagName()`. Here are some examples:'
            ),
            _buildSectionTitle('document.getElementById()'),
            _buildParagraph(
              'The `document.getElementById(id)` method returns the element with the specified `id`. Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'element.style.color = "red";\n'
              '```\n'
              'This method is used to get an element by its unique `id` attribute and manipulate it.'
            ),
            _buildSectionTitle('document.getElementsByClassName()'),
            _buildParagraph(
              'The `document.getElementsByClassName(className)` method returns a collection of elements with the specified class name. Example:\n'
              '```javascript\n'
              'var elements = document.getElementsByClassName("myClass");\n'
              'for (var i = 0; i < elements.length; i++) {\n'
              '  elements[i].style.backgroundColor = "yellow";\n'
              '}\n'
              '```\n'
              'This method is used to get all elements with a given class name and manipulate them.'
            ),
            _buildSectionTitle('document.getElementsByTagName()'),
            _buildParagraph(
              'The `document.getElementsByTagName(tagName)` method returns a collection of elements with the specified tag name. Example:\n'
              '```javascript\n'
              'var elements = document.getElementsByTagName("p");\n'
              'for (var i = 0; i < elements.length; i++) {\n'
              '  elements[i].style.fontSize = "20px";\n'
              '}\n'
              '```\n'
              'This method is used to get all elements of a given tag name and manipulate them.'
            ),
            _buildSectionTitle('Modifying Element Attributes'),
            _buildParagraph(
              'You can modify attributes of HTML elements using methods like `setAttribute()` and `removeAttribute()`. Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'element.setAttribute("title", "New Title");\n'
              'element.removeAttribute("title");\n'
              '```\n'
              'These methods are used to set or remove attributes from HTML elements.'
            ),
            _buildSectionTitle('Manipulating Element Content'),
            _buildParagraph(
              'You can manipulate the content of HTML elements using properties like `innerHTML` and `textContent`. Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'element.innerHTML = "<p>New content</p>";\n'
              'element.textContent = "New text";\n'
              '```\n'
              'These properties are used to set or get the HTML or text content of an element.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'To learn more about HTML DOM elements, you can visit the following resources:\n'
              '- [W3Schools - HTML DOM Elements](https://www.w3schools.com/js/js_htmldom_elements.asp)\n'
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
}
