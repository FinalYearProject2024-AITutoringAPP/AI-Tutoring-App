import 'package:flutter/material.dart';

class HTMLBasicTagsElementsAttributesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Basics: Tags, Elements, and Attributes',
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
            _buildSectionTitle('Introduction to HTML'),
            _buildSectionContent(
              'HTML stands for HyperText Markup Language. It is used to create and design web pages. HTML uses a set of tags and attributes to structure content on the web.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Basic Tags'),
            _buildSectionContent(
              'HTML tags are the building blocks of HTML. Here are some basic HTML tags and their uses:',
            ),
            _buildSectionTitle('1. <!DOCTYPE html>'),
            _buildSectionContent(
              'The `<!DOCTYPE html>` declaration defines this document as an HTML5 document. It is placed at the very top of the HTML document.',
            ),
            _buildCodeExample(
              '<!DOCTYPE html>',
            ),
            _buildSectionTitle('2. <html>'),
            _buildSectionContent(
              'The `<html>` tag is the root element of an HTML page. All other elements are contained within this tag.',
            ),
            _buildCodeExample(
              '<html>\n'
              '  <!-- Content goes here -->\n'
              '</html>',
            ),
            _buildSectionTitle('3. <head>'),
            _buildSectionContent(
              'The `<head>` tag contains meta-information about the HTML document, such as its title, character set, and linked resources.',
            ),
            _buildCodeExample(
              '<head>\n'
              '  <title>Page Title</title>\n'
              '</head>',
            ),
            _buildSectionTitle('4. <title>'),
            _buildSectionContent(
              'The `<title>` tag sets the title of the HTML document. This title appears in the browser tab or window title.',
            ),
            _buildCodeExample(
              '<title>My Web Page</title>',
            ),
            _buildSectionTitle('5. <body>'),
            _buildSectionContent(
              'The `<body>` tag contains the content of the HTML document, including text, images, and other media.',
            ),
            _buildCodeExample(
              '<body>\n'
              '  <!-- Content goes here -->\n'
              '</body>',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Elements'),
            _buildSectionContent(
              'HTML elements are the building blocks of HTML pages. An element consists of a start tag, content, and an end tag. For example:',
            ),
            _buildSectionTitle('1. <h1> - <h6>'),
            _buildSectionContent(
              'The `<h1>` to `<h6>` tags define HTML headings. `<h1>` represents the highest level heading, and `<h6>` represents the lowest level heading.',
            ),
            _buildCodeExample(
              '<h1>This is a Heading 1</h1>\n'
              '<h2>This is a Heading 2</h2>\n'
              '<h3>This is a Heading 3</h3>\n'
              '<h4>This is a Heading 4</h4>\n'
              '<h5>This is a Heading 5</h5>\n'
              '<h6>This is a Heading 6</h6>',
            ),
            _buildSectionTitle('2. <p>'),
            _buildSectionContent(
              'The `<p>` tag defines a paragraph. It automatically adds space above and below the paragraph.',
            ),
            _buildCodeExample(
              '<p>This is a paragraph.</p>',
            ),
            _buildSectionTitle('3. <a>'),
            _buildSectionContent(
              'The `<a>` tag defines a hyperlink. The `href` attribute specifies the URL of the page the link goes to.',
            ),
            _buildCodeExample(
              '<a href="https://www.example.com">Visit Example.com</a>',
            ),
            _buildSectionTitle('4. <img>'),
            _buildSectionContent(
              'The `<img>` tag is used to embed images. The `src` attribute specifies the path to the image, and the `alt` attribute provides alternative text if the image cannot be displayed.',
            ),
            _buildCodeExample(
              '<img src="image.jpg" alt="Description of Image">',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Attributes'),
            _buildSectionContent(
              'HTML attributes provide additional information about HTML elements. They are specified in the opening tag and usually come in name/value pairs.',
            ),
            _buildSectionTitle('1. Attribute Syntax'),
            _buildSectionContent(
              'Attributes are written as name/value pairs. The attribute name is followed by an equal sign and then the attribute value enclosed in quotes.',
            ),
            _buildCodeExample(
              '<a href="https://www.example.com" target="_blank">Link</a>',
            ),
            _buildSectionTitle('2. Common Attributes'),
            _buildSectionContent(
              '- **href**: Specifies the URL of a link (used with `<a>` tag).\n'
              '- **src**: Specifies the path to an image (used with `<img>` tag).\n'
              '- **alt**: Provides alternative text for an image (used with `<img>` tag).\n'
              '- **target**: Specifies where to open the linked document (used with `<a>` tag).',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'Understanding HTML tags, elements, and attributes is essential for building and structuring web pages. This knowledge forms the foundation for web development and design.',
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
