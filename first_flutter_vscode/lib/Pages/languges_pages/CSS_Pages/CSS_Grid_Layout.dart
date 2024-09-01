import 'package:flutter/material.dart';

class CSSGridLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Grid Layout',
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
            _buildSectionTitle('CSS Grid Layout'),
            _buildSectionContent(
              'CSS Grid Layout is a two-dimensional layout system for the web. It allows you to arrange items into rows and columns, giving you precise control over your web layout.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Grid Container'),
            _buildSectionContent(
              'A grid container is an element with `display: grid` or `display: inline-grid`. This container defines the grid and all the grid items are direct children of this container.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: grid;\n'
              '}',
            ),
            _buildSectionContent(
              'You can define the number of rows and columns, and how they should be sized.',
            ),
            _buildSectionTitle('Grid Container Properties'),
            _buildSectionContent(
              '- **grid-template-columns**: Specifies the number and size of columns in the grid layout.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  grid-template-columns: 100px 200px;\n'
              '  grid-template-columns: 1fr 2fr;\n'
              '}',
            ),
            _buildSectionContent(
              '- **grid-template-rows**: Specifies the number and size of rows in the grid layout.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  grid-template-rows: 100px 200px;\n'
              '  grid-template-rows: 1fr 2fr;\n'
              '}',
            ),
            _buildSectionContent(
              '- **grid-template-areas**: Defines a grid template by referencing the names of the grid areas which are specified with the `grid-area` property of the grid items.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  grid-template-areas:\n'
              '    "header header header"\n'
              '    "menu main main"\n'
              '    "menu footer footer";\n'
              '}',
            ),
            _buildSectionContent(
              '- **grid-gap**: Specifies the gap (gutter) between rows and columns.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  grid-gap: 10px;\n'
              '}',
            ),
            _buildSectionContent(
              '- **justify-items**: Aligns grid items along the row axis.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  justify-items: start;\n'
              '  justify-items: end;\n'
              '  justify-items: center;\n'
              '  justify-items: stretch;\n'
              '}',
            ),
            _buildSectionContent(
              '- **align-items**: Aligns grid items along the column axis.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  align-items: start;\n'
              '  align-items: end;\n'
              '  align-items: center;\n'
              '  align-items: stretch;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Grid Item Properties'),
            _buildSectionContent(
              'Grid items are the children of the grid container. These items can be controlled individually to adjust their placement and sizing within the grid.',
            ),
            _buildSectionContent(
              '- **grid-column-start** and **grid-column-end**: Specifies the start and end lines for a grid item, spanning columns.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  grid-column-start: 1;\n'
              '  grid-column-end: 3;\n'
              '}',
            ),
            _buildSectionContent(
              '- **grid-row-start** and **grid-row-end**: Specifies the start and end lines for a grid item, spanning rows.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  grid-row-start: 1;\n'
              '  grid-row-end: 3;\n'
              '}',
            ),
            _buildSectionContent(
              '- **grid-area**: Specifies a grid item\'s location within the grid using a shorthand for `grid-row-start`, `grid-column-start`, `grid-row-end`, and `grid-column-end`.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  grid-area: 1 / 1 / 2 / 3;\n'
              '}',
            ),
            _buildSectionContent(
              '- **justify-self**: Aligns the grid item inside a grid cell along the row axis.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  justify-self: start;\n'
              '  justify-self: end;\n'
              '  justify-self: center;\n'
              '  justify-self: stretch;\n'
              '}',
            ),
            _buildSectionContent(
              '- **align-self**: Aligns the grid item inside a grid cell along the column axis.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  align-self: start;\n'
              '  align-self: end;\n'
              '  align-self: center;\n'
              '  align-self: stretch;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Grid Layout Examples'),
            _buildSectionContent(
              'CSS Grid makes it easy to create complex layouts. Here are a few examples of how to use Grid Layout to build web layouts:',
            ),
            _buildSectionContent(
              '- Creating a basic 2-column grid with a header and footer.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: grid;\n'
              '  grid-template-columns: 1fr 1fr;\n'
              '  grid-template-rows: auto 1fr auto;\n'
              '  grid-template-areas:\n'
              '    "header header"\n'
              '    "menu main"\n'
              '    "footer footer";\n'
              '}\n\n'
              'header {\n'
              '  grid-area: header;\n'
              '}\n'
              'nav {\n'
              '  grid-area: menu;\n'
              '}\n'
              'main {\n'
              '  grid-area: main;\n'
              '}\n'
              'footer {\n'
              '  grid-area: footer;\n'
              '}',
            ),
            _buildSectionContent(
              '- Building a responsive grid that automatically adapts to different screen sizes.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: grid;\n'
              '  grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));\n'
              '  grid-gap: 10px;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'CSS Grid Layout is a powerful tool for creating flexible, two-dimensional layouts on the web. It enables designers and developers to create complex layouts that adapt to various screen sizes with ease.',
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
