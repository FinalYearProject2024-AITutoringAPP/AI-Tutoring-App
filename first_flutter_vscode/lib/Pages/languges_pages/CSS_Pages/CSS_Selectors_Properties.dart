import 'package:flutter/material.dart';

class CSSSelectorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Selectors',
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
              'CSS Selectors',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'CSS selectors are used to "find" (or select) the HTML elements you want to style.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            _buildSectionTitle('1. The CSS Element Selector'),
            _buildSectionContent(
              'The element selector selects HTML elements based on the element name.',
            ),
            _buildCodeExample('h1 {\n  text-align: center;\n  color: blue;\n}'),
            SizedBox(height: 20),
            _buildSectionTitle('2. The CSS ID Selector'),
            _buildSectionContent(
              'The ID selector uses the ID attribute of an HTML element to select a specific element.',
            ),
            _buildCodeExample('#para1 {\n  text-align: center;\n  color: red;\n}'),
            SizedBox(height: 20),
            _buildSectionTitle('3. The CSS Class Selector'),
            _buildSectionContent(
              'The class selector selects HTML elements with a specific class attribute.',
            ),
            _buildCodeExample('.center {\n  text-align: center;\n  color: green;\n}'),
            SizedBox(height: 20),
            _buildSectionTitle('4. The CSS Universal Selector'),
            _buildSectionContent(
              'The universal selector (*) selects all HTML elements on the page.',
            ),
            _buildCodeExample('* {\n  color: blue;\n}'),
            SizedBox(height: 20),
            _buildSectionTitle('5. The CSS Grouping Selector'),
            _buildSectionContent(
              'The grouping selector selects all the HTML elements with the same style definitions.',
            ),
            _buildCodeExample('h1, h2, p {\n  text-align: center;\n  color: red;\n}'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        code,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.greenAccent,
          fontFamily: 'Courier',
        ),
      ),
    );
  }
}
