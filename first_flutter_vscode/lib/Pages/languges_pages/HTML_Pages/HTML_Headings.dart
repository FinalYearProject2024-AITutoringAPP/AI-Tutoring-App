import 'package:flutter/material.dart';

class HTMLHeadingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Headings, Paragraphs, and Styles',
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
            _buildSectionTitle('HTML Headings'),
            _buildSectionContent(
              'HTML headings are defined with the `<h1>` to `<h6>` tags. The `<h1>` tag defines the most important heading, and `<h6>` defines the least important heading.',
            ),
            _buildCodeExample(
              '<h1>This is a Heading 1</h1>\n'
              '<h2>This is a Heading 2</h2>\n'
              '<h3>This is a Heading 3</h3>\n'
              '<h4>This is a Heading 4</h4>\n'
              '<h5>This is a Heading 5</h5>\n'
              '<h6>This is a Heading 6</h6>',
            ),
            _buildSectionContent(
              'Headings are important for SEO as they help search engines understand the content of your web page.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Paragraphs'),
            _buildSectionContent(
              'The `<p>` tag defines a paragraph. It automatically adds space before and after itself. It is used to separate text into paragraphs.',
            ),
            _buildCodeExample(
              '<p>This is a paragraph.</p>\n'
              '<p>This is another paragraph.</p>',
            ),
            _buildSectionContent(
              'The `<p>` tag is used to structure text content, making it easier to read and more visually appealing.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('HTML Text Styling'),
            _buildSectionContent(
              'HTML offers several tags for styling text. These tags include bold, italic, underline, and more.',
            ),
            _buildSectionTitle('1. Bold Text'),
            _buildSectionContent(
              'The `<b>` and `<strong>` tags are used to make text bold. The `<strong>` tag also indicates that the text is of strong importance.',
            ),
            _buildCodeExample(
              '<b>This is bold text.</b>\n'
              '<strong>This is strong text.</strong>',
            ),
            _buildSectionTitle('2. Italic Text'),
            _buildSectionContent(
              'The `<i>` and `<em>` tags are used to italicize text. The `<em>` tag also indicates that the text is emphasized.',
            ),
            _buildCodeExample(
              '<i>This is italic text.</i>\n'
              '<em>This is emphasized text.</em>',
            ),
            _buildSectionTitle('3. Underlined Text'),
            _buildSectionContent(
              'The `<u>` tag is used to underline text. This tag is used less frequently as underlining is often reserved for hyperlinks.',
            ),
            _buildCodeExample(
              '<u>This is underlined text.</u>',
            ),
            _buildSectionTitle('4. Text Color and Background'),
            _buildSectionContent(
              'To style text color and background, you use inline CSS styles with the `style` attribute.',
            ),
            _buildCodeExample(
              '<p style="color: red; background-color: yellow;">This is a styled paragraph.</p>',
            ),
            _buildSectionTitle('5. Text Alignment'),
            _buildSectionContent(
              'Text alignment can be controlled with the `text-align` property in CSS. Options include `left`, `right`, `center`, and `justify`.',
            ),
            _buildCodeExample(
              '<p style="text-align: center;">This paragraph is centered.</p>',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'Proper use of headings, paragraphs, and text styling is essential for creating well-structured and visually appealing web pages. Understanding these elements will help you effectively present and style content on your website.',
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
