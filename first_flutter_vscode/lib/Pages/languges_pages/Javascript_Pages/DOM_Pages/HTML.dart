import 'package:flutter/material.dart';

class JSDOMHTMLPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM HTML',
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
            _buildSectionTitle('The HTML DOM HTML Object'),
            _buildParagraph(
              'The `HTML` object in the Document Object Model (DOM) represents the HTML of a web page. It provides methods to access and manipulate HTML elements and attributes.'
            ),
            _buildSectionTitle('Accessing HTML Elements'),
            _buildParagraph(
              'The HTML DOM provides methods to access elements and their content. Here are some common methods:'
            ),
            _buildSectionTitle('getElementById'),
            _buildParagraph(
              'The `getElementById()` method returns an element with a specified ID. Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'console.log(element.innerHTML);\n'
              '```\n'
              'This method is used to get an element by its ID attribute and manipulate its content or properties.'
            ),
            _buildSectionTitle('getElementsByClassName'),
            _buildParagraph(
              'The `getElementsByClassName()` method returns a collection of elements with a specified class name. Example:\n'
              '```javascript\n'
              'var elements = document.getElementsByClassName("myClass");\n'
              'console.log(elements[0].innerHTML);\n'
              '```\n'
              'This method is used to access all elements with a specific class name.'
            ),
            _buildSectionTitle('getElementsByTagName'),
            _buildParagraph(
              'The `getElementsByTagName()` method returns a collection of elements with a specified tag name. Example:\n'
              '```javascript\n'
              'var elements = document.getElementsByTagName("p");\n'
              'console.log(elements[0].innerHTML);\n'
              '```\n'
              'This method is used to get all elements with a specific tag name, such as `p` for paragraphs.'
            ),
            _buildSectionTitle('querySelector'),
            _buildParagraph(
              'The `querySelector()` method returns the first element that matches a specified CSS selector. Example:\n'
              '```javascript\n'
              'var element = document.querySelector(".myClass");\n'
              'console.log(element.innerHTML);\n'
              '```\n'
              'This method is used to find the first element that matches a CSS selector.'
            ),
            _buildSectionTitle('querySelectorAll'),
            _buildParagraph(
              'The `querySelectorAll()` method returns a collection of elements that match a specified CSS selector. Example:\n'
              '```javascript\n'
              'var elements = document.querySelectorAll(".myClass");\n'
              'console.log(elements[0].innerHTML);\n'
              '```\n'
              'This method is used to get all elements that match a CSS selector.'
            ),
            _buildSectionTitle('Manipulating HTML Content'),
            _buildParagraph(
              'You can use JavaScript to manipulate the content of HTML elements. Here are some common methods:'
            ),
            _buildSectionTitle('innerHTML'),
            _buildParagraph(
              'The `innerHTML` property sets or returns the HTML content of an element. Example:\n'
              '```javascript\n'
              'document.getElementById("myElement").innerHTML = "New Content";\n'
              '```\n'
              'This property is used to change the HTML inside an element.'
            ),
            _buildSectionTitle('textContent'),
            _buildParagraph(
              'The `textContent` property sets or returns the text content of an element. Example:\n'
              '```javascript\n'
              'document.getElementById("myElement").textContent = "New Text";\n'
              '```\n'
              'This property is used to change the text inside an element, without affecting the HTML structure.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'To learn more about the HTML DOM and its methods, you can visit the following resources:\n'
              '- [W3Schools - HTML DOM HTML](https://www.w3schools.com/js/js_htmldom_html.asp)\n'
              '- [MDN Web Docs - Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)'
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
