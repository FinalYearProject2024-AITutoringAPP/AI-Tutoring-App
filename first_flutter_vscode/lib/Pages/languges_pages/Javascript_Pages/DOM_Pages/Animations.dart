import 'package:flutter/material.dart';

class JSDOMAnimationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Animations',
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
            _buildSectionTitle('Introduction to Animations'),
            _buildParagraph(
              'Animations can make web pages more interactive and engaging. JavaScript allows you to animate HTML elements using various methods, such as modifying their CSS properties or using the Web Animations API.'
            ),
            _buildSectionTitle('Basic Animation with JavaScript'),
            _buildParagraph(
              'You can create simple animations by changing CSS properties over time using JavaScript. This example shows how to animate the position of an element.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'function moveElement() {\n'
              '  var elem = document.getElementById("myElement");\n'
              '  var pos = 0;\n'
              '  var id = setInterval(frame, 5);\n'
              '  function frame() {\n'
              '    if (pos >= 350) {\n'
              '      clearInterval(id);\n'
              '    } else {\n'
              '      pos++;\n'
              '      elem.style.top = pos + "px";\n'
              '      elem.style.left = pos + "px";\n'
              '    }\n'
              '  }\n'
              '}\n'
              '```\n'
              'This example uses `setInterval` to move an element with the id "myElement" diagonally by changing its top and left properties.'
            ),
            _buildSectionTitle('Using CSS Transitions'),
            _buildParagraph(
              'CSS transitions provide a way to animate changes in CSS properties. JavaScript can be used to trigger these transitions by adding or removing CSS classes.'
            ),
            _buildCodeSnippet(
              'HTML Example:\n'
              '```html\n'
              '<div id="myElement" class="box"></div>\n'
              '<button onclick="move()">Move</button>\n'
              '```\n'
              'CSS Example:\n'
              '```css\n'
              '.box {\n'
              '  width: 100px;\n'
              '  height: 100px;\n'
              '  background-color: red;\n'
              '  position: relative;\n'
              '  transition: transform 2s;\n'
              '}\n'
              '.move {\n'
              '  transform: translateX(300px);\n'
              '}\n'
              '```\n'
              'JavaScript Example:\n'
              '```javascript\n'
              'function move() {\n'
              '  document.getElementById("myElement").classList.toggle("move");\n'
              '}\n'
              '```\n'
              'In this example, clicking the button toggles the "move" class, which triggers a CSS transition to move the element.'
            ),
            _buildSectionTitle('Using the Web Animations API'),
            _buildParagraph(
              'The Web Animations API provides more control over animations by allowing you to create animations programmatically. This example demonstrates how to use the Web Animations API to animate an element.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'function animateElement() {\n'
              '  var elem = document.getElementById("myElement");\n'
              '  elem.animate([\n'
              '    { transform: "translateX(0px)" },\n'
              '    { transform: "translateX(300px)" }\n'
              '  ], {\n'
              '    duration: 2000,\n'
              '    iterations: Infinity\n'
              '  });\n'
              '}\n'
              '```\n'
              'This example creates a repeating animation that moves an element with the id "myElement" horizontally by 300 pixels over 2 seconds.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on JavaScript animations, check out these resources:\n'
              '- [W3Schools - HTML DOM Animation](https://www.w3schools.com/js/js_htmldom_animate.asp)\n'
              '- [MDN Web Docs - Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)'
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
