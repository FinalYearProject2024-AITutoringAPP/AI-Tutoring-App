import 'package:flutter/material.dart';

class CSSBoxModelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Box Model',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
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
              'CSS Box Model',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'All HTML elements can be considered as boxes. In CSS, the term "box model" is used when talking about design and layout.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The CSS box model is essentially a box that wraps around every HTML element. It consists of: margins, borders, padding, and the actual content. The image below illustrates the box model:',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Image.network('https://www.w3schools.com/css/boxmodel.gif'),
            SizedBox(height: 20),
            _buildSectionTitle('Explanation of the Different Parts:'),
            _buildSectionContent(
              '1. Content - The content of the box, where text and images appear.',
            ),
            _buildSectionContent(
              '2. Padding - Clears an area around the content. The padding is transparent.',
            ),
            _buildSectionContent(
              '3. Border - A border that goes around the padding (if any) and content.',
            ),
            _buildSectionContent(
              '4. Margin - Clears an area outside the border. The margin is transparent.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Width and Height of an Element:'),
            Text(
              'In order to set the width and height of an element correctly in all browsers, you need to know how the box model works.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'When you set the width and height properties of an element with CSS, you just set the width and height of the content area. To calculate the full size of an element, you must also add padding, borders, and margins.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Example:'),
            _buildCodeExample(
              'div {\n'
              '  width: 300px;\n'
              '  padding: 10px;\n'
              '  border: 5px solid gray;\n'
              '  margin: 20px;\n'
              '}\n\n'
              '/* The total width of the element is 300px + 10px + 10px + 5px + 5px = 330px */',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Box Model Shorthand Properties:'),
            _buildSectionContent(
              'You can also specify all the padding properties in one property: padding.',
            ),
            _buildSectionContent(
              'The same applies for margin, border-width, and border-color.',
            ),
            _buildCodeExample(
              'padding: 25px 50px 75px 100px;\n'
              '/* top padding is 25px */\n'
              '/* right padding is 50px */\n'
              '/* bottom padding is 75px */\n'
              '/* left padding is 100px */',
            ),
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
