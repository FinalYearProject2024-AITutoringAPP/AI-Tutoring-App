import 'package:flutter/material.dart';

class JSDOMCSSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM CSS',
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
            _buildSectionTitle('Manipulating CSS Styles'),
            _buildParagraph(
              'You can manipulate CSS styles of HTML elements using JavaScript. This allows you to dynamically change the appearance of web elements.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'document.getElementById("myElement").style.color = "red";\n'
              '```\n'
              'This example changes the text color of the element with id "myElement" to red.'
            ),
            _buildSectionTitle('CSS Style Properties'),
            _buildParagraph(
              'JavaScript can change various CSS properties such as color, font-size, background, margin, and more.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'element.style.fontSize = "20px";\n'
              'element.style.backgroundColor = "lightblue";\n'
              '```\n'
              'This example changes the font size and background color of the element with id "myElement".'
            ),
            _buildSectionTitle('Adding and Removing CSS Classes'),
            _buildParagraph(
              'You can also add or remove CSS classes from elements to change their style according to predefined CSS rules.'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'var element = document.getElementById("myElement");\n'
              'element.classList.add("newClass");\n'
              'element.classList.remove("oldClass");\n'
              '```\n'
              'This example adds the class "newClass" and removes the class "oldClass" from the element with id "myElement".'
            ),
            _buildSectionTitle('Inline Styles vs. CSS Classes'),
            _buildParagraph(
              'Inline styles are applied directly to elements using JavaScript, whereas CSS classes are defined in external or internal stylesheets and applied to elements. Using CSS classes is generally preferred for maintainability.'
            ),
            _buildCodeSnippet(
              'Inline Style Example:\n'
              '```javascript\n'
              'document.getElementById("myElement").style.border = "2px solid black";\n'
              '```\n'
              'CSS Class Example:\n'
              '```css\n'
              '.borderClass {\n'
              '  border: 2px solid black;\n'
              '}\n'
              '```\n'
              '```javascript\n'
              'document.getElementById("myElement").classList.add("borderClass");\n'
              '```\n'
              'In this case, the CSS class method is more maintainable and separates styling from JavaScript.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information on manipulating CSS with JavaScript, check out these resources:\n'
              '- [W3Schools - HTML DOM Style](https://www.w3schools.com/js/js_htmldom_css.asp)\n'
              '- [MDN Web Docs - CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)'
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
