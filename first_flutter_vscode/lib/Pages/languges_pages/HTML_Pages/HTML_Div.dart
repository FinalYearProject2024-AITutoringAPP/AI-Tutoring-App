import 'package:flutter/material.dart';

class HTMLDivIdClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Div, Id, and Class',
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
            _buildSectionTitle('HTML <div> Element'),
            _buildSectionContent(
              'The `<div>` element is a block-level container used to group elements for styling purposes (using CSS), or because they share attribute values, such as `class` or `id`.',
            ),
            _buildCodeExample(
              '<div>\n'
              '  <h1>Title</h1>\n'
              '  <p>This is a paragraph inside a div element.</p>\n'
              '</div>',
            ),
            _buildSectionTitle('Styling with CSS'),
            _buildSectionContent(
              'The `<div>` element is commonly used with CSS to layout a web page. By assigning a class or id to a `<div>`, you can style it with CSS.',
            ),
            _buildCodeExample(
              '<div class="container">\n'
              '  <h1>Styled Title</h1>\n'
              '  <p>This paragraph is styled using a class selector.</p>\n'
              '</div>',
            ),
            _buildSectionTitle('HTML id Attribute'),
            _buildSectionContent(
              'The `id` attribute specifies a unique id for an HTML element (the value must be unique within the HTML document). It is used to point to a specific style declaration in a style sheet.',
            ),
            _buildCodeExample(
              '<div id="uniqueId">\n'
              '  <h1>Unique Title</h1>\n'
              '  <p>This paragraph is styled using an id selector.</p>\n'
              '</div>',
            ),
            _buildSectionContent(
              'The `id` attribute can also be used to target an element with JavaScript, or to link to specific parts of a page with anchor links.',
            ),
            _buildCodeExample(
              '<a href="#uniqueId">Go to Unique Title</a>',
            ),
            _buildSectionTitle('HTML class Attribute'),
            _buildSectionContent(
              'The `class` attribute is used to specify a class for an HTML element. Multiple elements can share the same class, allowing them to be styled uniformly.',
            ),
            _buildCodeExample(
              '<div class="common">\n'
              '  <h1>Title 1</h1>\n'
              '</div>\n'
              '<div class="common">\n'
              '  <h1>Title 2</h1>\n'
              '</div>',
            ),
            _buildSectionTitle('HTML Classes'),
            _buildSectionContent(
              'HTML classes allow you to group several HTML elements together and apply the same styles to all of them. Classes are defined with the `class` attribute, and they can be reused across multiple elements.',
            ),
            _buildCodeExample(
              '<style>\n'
              '.center {\n'
              '  text-align: center;\n'
              '  color: red;\n'
              '}\n'
              '</style>\n\n'
              '<h1 class="center">This is a centered heading</h1>\n'
              '<p class="center">This is a centered paragraph.</p>',
            ),
            _buildSectionContent(
              'You can use multiple classes on a single element by separating them with a space.',
            ),
            _buildCodeExample(
              '<style>\n'
              '.center {\n'
              '  text-align: center;\n'
              '  color: red;\n'
              '}\n'
              '.large {\n'
              '  font-size: 300%;\n'
              '}\n'
              '</style>\n\n'
              '<h1 class="center large">This is a large centered heading</h1>',
            ),
            _buildSectionContent(
              'You can also style multiple classes at once using a comma to separate them in your CSS.',
            ),
            _buildCodeExample(
              '<style>\n'
              '.center, .large {\n'
              '  font-family: Arial, sans-serif;\n'
              '}\n'
              '</style>\n\n'
              '<p class="center">This text is centered and uses Arial font.</p>\n'
              '<p class="large">This text is large and uses Arial font.</p>',
            ),
            _buildSectionTitle('Difference Between class and id'),
            _buildSectionContent(
              'The main difference between `id` and `class` is that `id` is unique and can only be used once per page, while `class` can be used multiple times across different elements.',
            ),
            _buildCodeExample(
              '/* Styling an element with an id */\n'
              '#uniqueId {\n'
              '  color: red;\n'
              '}\n\n'
              '/* Styling elements with a class */\n'
              '.common {\n'
              '  color: blue;\n'
              '}',
            ),
            _buildSectionTitle('Using id with JavaScript'),
            _buildSectionContent(
              'The `id` attribute can be used to target elements with JavaScript. This allows you to manipulate individual elements directly.',
            ),
            _buildCodeExample(
              '<script>\n'
              'document.getElementById("uniqueId").style.color = "blue";\n'
              '</script>',
            ),
            _buildSectionTitle('Linking to an Element with id'),
            _buildSectionContent(
              'You can create a link that jumps to a specific section of a page using an `id`. The `href` attribute of the link should be set to `#id`, where `id` is the value of the `id` attribute of the target element.',
            ),
            _buildCodeExample(
              '<a href="#section2">Go to Section 2</a>\n\n'
              '<h2 id="section2">Section 2</h2>\n'
              '<p>This is Section 2.</p>',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'The `<div>` element, along with `id` and `class` attributes, plays a crucial role in structuring, styling, and scripting web pages effectively. Understanding how to use these elements will help you create well-organized and interactive web pages.',
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
