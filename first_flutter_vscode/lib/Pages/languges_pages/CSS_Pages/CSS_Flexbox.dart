import 'package:flutter/material.dart';

class CSSFlexboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Flexbox',
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
            _buildSectionTitle('CSS Flexbox'),
            _buildSectionContent(
              'The CSS Flexible Box Layout Module, commonly known as Flexbox, is a layout model that provides an efficient way to align and distribute space among items in a container, even when their size is unknown or dynamic. The main idea behind the flex layout is to give the container the ability to alter its items\' width/height (and order) to best fill the available space (mostly to accommodate to all kinds of display devices and screen sizes). A flex container expands items to fill available free space, or shrinks them to prevent overflow.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Flexbox Container'),
            _buildSectionContent(
              'To start using the Flexbox model, you need to first define a flex container. A flex container is an element with the CSS property `display: flex`. It establishes a new flex formatting context for its contents.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: flex;\n'
              '}',
            ),
            _buildSectionContent(
              'The direct child elements of the flex container automatically become flex items. These items are then laid out according to the flexbox rules.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Flexbox Properties for the Container'),
            _buildSectionContent(
              'Here are some of the important flexbox properties you can apply to the container:',
            ),
            _buildSectionContent(
              '- **flex-direction**: Defines the direction in which the container wants to stack the flex items.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  flex-direction: row;\n'
              '  flex-direction: row-reverse;\n'
              '  flex-direction: column;\n'
              '  flex-direction: column-reverse;\n'
              '}',
            ),
            _buildSectionContent(
              '- **justify-content**: Aligns the flex items along the main axis.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  justify-content: flex-start;\n'
              '  justify-content: flex-end;\n'
              '  justify-content: center;\n'
              '  justify-content: space-between;\n'
              '  justify-content: space-around;\n'
              '  justify-content: space-evenly;\n'
              '}',
            ),
            _buildSectionContent(
              '- **align-items**: Aligns the flex items along the cross axis.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  align-items: stretch;\n'
              '  align-items: flex-start;\n'
              '  align-items: flex-end;\n'
              '  align-items: center;\n'
              '  align-items: baseline;\n'
              '}',
            ),
            _buildSectionContent(
              '- **flex-wrap**: Controls whether the flex items should wrap or not.',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  flex-wrap: nowrap;\n'
              '  flex-wrap: wrap;\n'
              '  flex-wrap: wrap-reverse;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Flexbox Items'),
            _buildSectionContent(
              'Each item within a flex container can be customized using various flexbox properties specific to the items. Here are some key properties you can apply:',
            ),
            _buildSectionContent(
              '- **flex-grow**: Specifies how much a flex item will grow relative to the rest of the flex items inside the same container.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  flex-grow: 1;\n'
              '}',
            ),
            _buildSectionContent(
              '- **flex-shrink**: Specifies how much a flex item will shrink relative to the rest of the flex items inside the same container.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  flex-shrink: 1;\n'
              '}',
            ),
            _buildSectionContent(
              '- **flex-basis**: Defines the default size of an element before the remaining space is distributed. It can be a length (e.g., 20%, 5rem, etc.) or the keyword auto.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  flex-basis: 100px;\n'
              '}',
            ),
            _buildSectionContent(
              '- **align-self**: Allows the default alignment (or the one specified by align-items) to be overridden for individual flex items.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  align-self: center;\n'
              '}',
            ),
            _buildSectionContent(
              '- **order**: Controls the order in which the flex items appear in the flex container.',
            ),
            _buildCodeExample(
              'div.item {\n'
              '  order: 2;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Flexbox Examples'),
            _buildSectionContent(
              'Here are a few examples of how Flexbox can be used:',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: flex;\n'
              '  flex-direction: row;\n'
              '  justify-content: center;\n'
              '  align-items: center;\n'
              '}',
            ),
            _buildCodeExample(
              'div.container {\n'
              '  display: flex;\n'
              '  flex-direction: column;\n'
              '  justify-content: space-between;\n'
              '  align-items: flex-start;\n'
              '}',
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
        fontSize: 22.0,
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
