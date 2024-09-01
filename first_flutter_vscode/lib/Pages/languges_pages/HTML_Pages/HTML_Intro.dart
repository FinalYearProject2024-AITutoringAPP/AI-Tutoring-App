import 'package:flutter/material.dart';

class HTMLIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to HTML',
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
              'HTML stands for HyperText Markup Language. It is the standard markup language used to create web pages. HTML describes the structure of web pages using a variety of tags and attributes.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('What is HTML?'),
            _buildSectionContent(
              'HTML is a language used to create and design web pages. It allows you to structure text, images, and other elements on a web page. HTML elements are the building blocks of web pages. They define the structure and content of the page.',
            ),
            _buildSectionTitle('History of HTML'),
            _buildSectionContent(
              'HTML was created by Tim Berners-Lee in 1991. The first version of HTML was relatively simple and included basic tags for formatting text and linking documents. Over the years, HTML has evolved significantly. The latest version, HTML5, introduced new elements, attributes, and behaviors to enhance web development.',
            ),
            _buildSectionTitle('HTML Document Structure'),
            _buildSectionContent(
              'An HTML document is composed of various elements that work together to create the structure of the page. The basic structure of an HTML document includes the following elements:',
            ),
            _buildCodeExample(
              '<!DOCTYPE html>\n'
              '<html>\n'
              '  <head>\n'
              '    <title>Document Title</title>\n'
              '  </head>\n'
              '  <body>\n'
              '    <h1>Heading</h1>\n'
              '    <p>This is a paragraph.</p>\n'
              '  </body>\n'
              '</html>',
            ),
            _buildSectionContent(
              '- **<!DOCTYPE html>**: Declares the document type and version of HTML.\n'
              '- **<html>**: The root element of an HTML document.\n'
              '- **<head>**: Contains meta-information about the document, such as the title and character set.\n'
              '- **<title>**: Sets the title of the document, shown in the browser\'s title bar or tab.\n'
              '- **<body>**: Contains the content of the document, such as headings, paragraphs, images, and links.\n'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Basic HTML Tags'),
            _buildSectionContent(
              'Here are some of the most common HTML tags and their usage:',
            ),
            _buildCodeExample(
              '<h1>Heading 1</h1>\n'
              '<p>This is a paragraph.</p>\n'
              '<a href="https://www.example.com">This is a link</a>\n'
              '<img src="image.jpg" alt="Description of image">\n'
              '<ul>\n'
              '  <li>Item 1</li>\n'
              '  <li>Item 2</li>\n'
              '</ul>',
            ),
            _buildSectionContent(
              '- **<h1> to <h6>**: Headings, with **<h1>** being the highest level and **<h6>** the lowest.\n'
              '- **<p>**: Paragraphs of text.\n'
              '- **<a>**: Links to other web pages or resources.\n'
              '- **<img>**: Embeds images into the page.\n'
              '- **<ul>**: Unordered lists, and **<li>** are list items within the list.\n'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Attributes'),
            _buildSectionContent(
              'HTML tags can have attributes that provide additional information about the element. Attributes are specified in the opening tag and come in name-value pairs, separated by an equals sign.',
            ),
            _buildCodeExample(
              '<a href="https://www.example.com" target="_blank">Visit Example</a>\n'
              '<img src="image.jpg" alt="Description of image" width="300" height="200">',
            ),
            _buildSectionContent(
              '- **href**: Specifies the URL for a link.\n'
              '- **target**: Specifies where to open the linked document.\n'
              '- **src**: Specifies the path to an image.\n'
              '- **alt**: Provides alternative text for an image.\n'
              '- **width** and **height**: Define the size of an image.\n'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'HTML is the foundation of web development. Understanding its basic structure and common elements will help you create well-structured web pages. As you progress, you can explore more advanced topics like HTML5, semantic elements, and responsive design.',
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
