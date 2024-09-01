import 'package:flutter/material.dart';

class CSSIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to CSS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'What is CSS?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS stands for Cascading Style Sheets.\n\n'
              'CSS describes how HTML elements are to be displayed on screen, paper, or in other media.\n\n'
              'CSS saves a lot of work. It can control the layout of multiple web pages all at once.\n\n'
              'External stylesheets are stored in CSS files.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Why Use CSS?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS is used to define styles for your web pages, including the design, layout and variations in display for different devices and screen sizes.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CSS Solves a Big Problem',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'HTML was NEVER intended to contain tags for formatting a web page!\n\n'
              'HTML was created to describe the content of a web page, like:\n\n'
              '<h1>This is a heading</h1>\n\n'
              '<p>This is a paragraph.</p>\n\n'
              'When tags like <font>, and color attributes were added to the HTML 3.2 specification, it started a nightmare for web developers.\n\n'
              'Development of large web sites, where fonts and color information were added to every single page, became a long and expensive process.\n\n'
              'To solve this problem, the World Wide Web Consortium (W3C) created CSS.\n\n'
              'CSS removed the style formatting from the HTML page!',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CSS Saves a Lot of Work!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The style definitions are normally saved in external .css files.\n\n'
              'With an external stylesheet file, you can change the look of an entire website by changing just one file!',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CSS Syntax',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS is a rule-based language—you define rules specifying groups of styles that should be applied to particular elements or groups of elements on your web page.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'h1 {\n'
                '  color: blue;\n'
                '  text-align: center;\n'
                '}\n\n'
                'p {\n'
                '  font-family: verdana;\n'
                '  font-size: 20px;\n'
                '}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.greenAccent,
                  fontFamily: 'Courier',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'CSS Selectors',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS selectors are used to "find" (or select) the HTML elements you want to style.\n\n'
              'We can divide CSS selectors into five categories:\n\n'
              '- Simple selectors (select elements based on name, id, class)\n'
              '- Combinator selectors (select elements based on a specific relationship between them)\n'
              '- Pseudo-class selectors (select elements based on a certain state)\n'
              '- Pseudo-elements selectors (select and style a part of an element)\n'
              '- Attribute selectors (select elements based on an attribute or attribute value)',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Learning CSS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS is easy to learn and understand but it provides powerful control over the presentation of an HTML document.\n\n'
              'Most commonly, CSS is combined with the markup languages HTML or XHTML.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
