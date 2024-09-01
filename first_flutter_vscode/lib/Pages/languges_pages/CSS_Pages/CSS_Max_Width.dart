import 'package:flutter/material.dart';

class CSSMaxWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Max-Width, Positioning, Inline-Block, and Alignment',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSectionTitle('CSS Max-Width'),
            _buildSectionContent(
              'The `max-width` property in CSS sets the maximum width of an element. It constrains the width of an element, so it does not exceed a specified maximum value.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Using Max-Width'),
            _buildSectionContent(
              'The `max-width` property can be specified in pixels, percentages, or other units. It is especially useful for responsive design, ensuring that elements do not become too wide on larger screens.',
            ),
            _buildCodeExample(
              'div {\n'
              '  max-width: 100px;\n'
              '  max-width: 50%;\n'
              '}',
            ),
            _buildSectionContent(
              'When the width of an element exceeds the `max-width`, the content will overflow or wrap according to other layout properties.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('CSS Positioning'),
            _buildSectionContent(
              'CSS positioning allows you to control the position of elements on a web page using the `position` property. There are several positioning schemes: static, relative, absolute, fixed, and sticky.',
            ),
            _buildSectionTitle('Position Property Values'),
            _buildSectionContent(
              '- **static**: Default value. Elements are positioned according to the normal flow of the document.',
            ),
            _buildCodeExample(
              'div {\n'
              '  position: static;\n'
  '}\n',
            ),
            _buildSectionContent(
              '- **relative**: Elements are positioned relative to their normal position.',
            ),
            _buildCodeExample(
              'div {\n'
              '  position: relative;\n'
              '  top: 10px;\n'
              '  left: 20px;\n'
              '}',
            ),
            _buildSectionContent(
              '- **absolute**: Elements are positioned relative to the nearest positioned ancestor or the initial containing block.',
            ),
            _buildCodeExample(
              'div {\n'
              '  position: absolute;\n'
              '  top: 10px;\n'
              '  left: 20px;\n'
              '}',
            ),
            _buildSectionContent(
              '- **fixed**: Elements are positioned relative to the viewport and stay in the same position even when scrolling.',
            ),
            _buildCodeExample(
              'div {\n'
              '  position: fixed;\n'
              '  bottom: 0;\n'
              '  right: 0;\n'
              '}',
            ),
            _buildSectionContent(
              '- **sticky**: Elements are positioned based on the user’s scroll position. They toggle between relative and fixed positioning depending on the scroll position.',
            ),
            _buildCodeExample(
              'div {\n'
              '  position: sticky;\n'
              '  top: 0;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('CSS Inline-Block'),
            _buildSectionContent(
              'The `inline-block` value for the `display` property allows an element to flow inline with other elements while retaining block-level features such as width and height.',
            ),
            _buildSectionContent(
              'Elements with `display: inline-block` can be aligned horizontally and vertically within their container, and they do not start on a new line.',
            ),
            _buildCodeExample(
              'div {\n'
              '  display: inline-block;\n'
              '  width: 100px;\n'
              '  height: 100px;\n'
              '  background-color: cyan;\n'
              '}',
            ),
            _buildSectionContent(
              'You can apply `margin` and `padding` to `inline-block` elements, and they will respect the box model like block-level elements.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('CSS Text Alignment'),
            _buildSectionContent(
              'The `text-align` property is used to set the horizontal alignment of text within its containing element.',
            ),
            _buildSectionContent(
              'Common values for `text-align` include `left`, `right`, `center`, and `justify`.',
            ),
            _buildCodeExample(
              'div {\n'
              '  text-align: center;\n'
              '}',
            ),
            _buildSectionContent(
              '- **left**: Aligns the text to the left edge of its container.\n'
              '- **right**: Aligns the text to the right edge of its container.\n'
              '- **center**: Centers the text within its container.\n'
              '- **justify**: Stretches the text so that it spans the width of its container, aligning both the left and right edges.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'Understanding CSS properties like max-width, positioning, inline-block, and text alignment is crucial for designing flexible and responsive web layouts. These properties give you control over element sizing, positioning, and alignment, allowing for a variety of design possibilities.',
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
        color: Colors.cyan,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        content,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(color: Colors.greenAccent, fontFamily: 'Courier'),
      ),
    );
  }
}
