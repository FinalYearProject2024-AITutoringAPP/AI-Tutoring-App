import 'package:flutter/material.dart';

class CSSMaginsPaddingDimensionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Margins, Padding, and Dimensions',
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
            _buildSectionTitle('CSS Margins'),
            _buildSectionContent(
              'The margin property creates space around elements, outside of any defined borders. It helps in positioning and spacing elements apart from each other.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Margin Properties'),
            _buildSectionContent(
              'The margin property can be set for all four sides or individually. The values can be in pixels, percentages, or other units.',
            ),
            _buildCodeExample(
              'div {\n'
              '  margin: 10px;\n'
              '  margin-top: 20px;\n'
              '  margin-right: 30px;\n'
              '  margin-bottom: 40px;\n'
              '  margin-left: 50px;\n'
              '}',
            ),
            _buildSectionContent(
              'You can also use shorthand notation for margins. For example, `margin: 10px 20px` sets the top and bottom margins to 10px and the right and left margins to 20px.',
            ),
            _buildCodeExample(
              'div {\n'
              '  margin: 10px; /* all sides */\n'
              '  margin: 10px 20px; /* top-bottom 10px, right-left 20px */\n'
              '  margin: 10px 20px 30px; /* top 10px, right-left 20px, bottom 30px */\n'
              '  margin: 10px 20px 30px 40px; /* top 10px, right 20px, bottom 30px, left 40px */\n'
              '}',
            ),
            _buildSectionTitle('CSS Margin Collapse'),
            _buildSectionContent(
              'Margin collapse occurs when vertical margins of adjacent block-level elements overlap. The larger margin is used, and the smaller margin is discarded.',
            ),
            _buildCodeExample(
              'p {\n'
              '  margin-top: 20px;\n'
              '  margin-bottom: 30px;\n'
              '}\n\n'
              '/* If two paragraphs are adjacent, the larger of the two margins will be used */\n',
            ),
            _buildSectionContent(
              'Margin collapse also occurs in nested elements when the top margin of a child element collapses with the bottom margin of its parent element.',
            ),
            _buildCodeExample(
              'div {\n'
              '  margin: 20px;\n'
              '}\n\n'
              'div > p {\n'
              '  margin-top: 30px;\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('CSS Padding'),
            _buildSectionContent(
              'Padding is used to create space inside an element, between the element\'s border and its content. It affects the internal spacing within the element.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Padding Properties'),
            _buildSectionContent(
              'The padding property sets the space between an element\'s content and its border. You can set padding for all four sides at once or specify padding for each side individually.',
            ),
            _buildCodeExample(
              'div {\n'
              '  padding: 10px;\n'
              '  padding-top: 20px;\n'
              '  padding-right: 30px;\n'
              '  padding-bottom: 40px;\n'
              '  padding-left: 50px;\n'
              '}',
            ),
            _buildSectionTitle('Padding Shorthand'),
            _buildSectionContent(
              'You can use shorthand to set padding for all four sides in one declaration. The values are set in the order: top right bottom left. For example, `padding: 10px 20px 30px 40px` sets padding for each side individually.',
            ),
            _buildCodeExample(
              'div {\n'
              '  padding: 10px 20px; /* top and bottom 10px, right and left 20px */\n'
              '  padding: 10px 20px 30px; /* top 10px, right and left 20px, bottom 30px */\n'
              '  padding: 10px 20px 30px 40px; /* top 10px, right 20px, bottom 30px, left 40px */\n'
              '}',
            ),
            _buildSectionTitle('Padding in Percentage'),
            _buildSectionContent(
              'Padding values can also be set as a percentage. When a percentage is used, it is calculated relative to the width of the containing element.',
            ),
            _buildCodeExample(
              'div {\n'
              '  padding: 5%; /* 5% of the width of the containing element */\n'
              '}',
            ),
            _buildSectionTitle('Padding and Box-Sizing'),
            _buildSectionContent(
              'The `box-sizing` property affects how padding and border are included in the element\'s total width and height. The default is `content-box`, which excludes padding and border from the total width and height. Setting `box-sizing: border-box` includes padding and border in the element\'s width and height.',
            ),
            _buildCodeExample(
              'div {\n'
              '  box-sizing: border-box;\n'
              '  padding: 20px;\n'
              '  border: 5px solid black;\n'
              '  width: 200px; /* Includes padding and border */\n'
              '}',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('CSS Dimensions'),
            _buildSectionContent(
              'CSS dimensions are used to control the width and height of elements. They can be set using various units and properties.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Width and Height'),
            _buildSectionContent(
              'The `width` and `height` properties specify the width and height of an element. These can be set in different units like pixels, percentages, and viewport units.',
            ),
            _buildCodeExample(
              'div {\n'
              '  width: 100px;\n'
              '  height: 200px;\n'
              '  width: 50%;\n'
              '  height: 50vh;\n'
              '}',
            ),
            _buildSectionTitle('Width and Height in Percentage'),
            _buildSectionContent(
              'When set to a percentage, the `width` and `height` properties are calculated based on the parent element\'s dimensions.',
            ),
            _buildCodeExample(
              'div.parent {\n'
              '  width: 400px;\n'
              '}\n\n'
              'div.child {\n'
              '  width: 50%;  /* 50% of 400px = 200px */\n'
              '  height: 50%; /* 50% of 400px = 200px */\n'
              '}',
            ),
            _buildSectionTitle('Viewport Units'),
            _buildSectionContent(
              'Viewport units are relative to the viewport size. They include `vw` (viewport width) and `vh` (viewport height). For example, `1vw` is 1% of the viewport width, and `1vh` is 1% of the viewport height.',
            ),
            _buildCodeExample(
              'div {\n'
              '  width: 50vw; /* 50% of viewport width */\n'
              '  height: 50vh; /* 50% of viewport height */\n'
              '}',
            ),
            _buildSectionTitle('Min and Max Width/Height'),
            _buildSectionContent(
              'You can set minimum and maximum values for width and height using the `min-width`, `max-width`, `min-height`, and `max-height` properties.',
            ),
            _buildCodeExample(
              'div {\n'
              '  min-width: 100px;\n'
              '  max-width: 500px;\n'
              '  min-height: 100px;\n'
              '  max-height: 500px;\n'
              '}',
            ),
            _buildSectionTitle('Box-Sizing'),
            _buildSectionContent(
              'The `box-sizing` property defines how the width and height of an element are calculated. The default value is `content-box`, which means that padding and borders are not included in the element\'s width and height. Using `border-box` includes padding and borders in the width and height.',
            ),
            _buildCodeExample(
              'div {\n'
              '  box-sizing: border-box;\n'
              '  width: 100px;\n'
              '  padding: 10px;\n'
              '  border: 5px solid black;\n'
              '}',
            ),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'CSS margins, padding, and dimensions are essential for controlling the layout and spacing of elements on a web page. Mastery of these properties allows for precise and flexible design control.',
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
