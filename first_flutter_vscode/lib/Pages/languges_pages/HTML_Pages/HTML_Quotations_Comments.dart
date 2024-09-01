import 'package:flutter/material.dart';

class HTMLQuotationsCommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Quotations and Comments',
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
            _buildSectionTitle('HTML Quotations'),
            _buildSectionContent(
              'HTML provides several tags for quoting text. These tags help to present quotations and citations effectively.',
            ),
            _buildSectionTitle('1. `<blockquote>` Tag'),
            _buildSectionContent(
              'The `<blockquote>` tag is used for long quotations. It typically displays the quoted text in a block format, indented from both sides.',
            ),
            _buildCodeExample(
              '<blockquote>\n'
              '  <p>This is a long quotation from an external source.</p>\n'
              '</blockquote>',
            ),
            _buildSectionTitle('2. `<q>` Tag'),
            _buildSectionContent(
              'The `<q>` tag is used for short quotations within a paragraph. It automatically adds quotation marks around the text.',
            ),
            _buildCodeExample(
              '<p>He said, <q>This is a short quotation.</q></p>',
            ),
            _buildSectionTitle('3. `<cite>` Tag'),
            _buildSectionContent(
              'The `<cite>` tag is used to reference the title of a creative work or the source of a quotation.',
            ),
            _buildCodeExample(
              '<p><cite>The Great Gatsby</cite> by F. Scott Fitzgerald.</p>',
            ),
            _buildSectionTitle('HTML Comments'),
            _buildSectionContent(
              'HTML comments are used to insert notes or explanations in your HTML code. Comments are not displayed in the browser but can be viewed in the source code.',
            ),
            _buildSectionTitle('1. Syntax'),
            _buildSectionContent(
              'HTML comments are written using the following syntax: `<!-- comment text -->`.',
            ),
            _buildCodeExample(
              '<!-- This is a comment -->\n'
              '<p>This is visible text.</p>',
            ),
            _buildSectionTitle('2. Use Cases'),
            _buildSectionContent(
              'Comments can be used to:\n'
              '- Explain sections of code for future reference.\n'
              '- Temporarily disable code during development.\n'
              '- Add metadata or instructions for other developers.',
            ),
            _buildSectionTitle('3. Best Practices'),
            _buildSectionContent(
              'While comments are useful, they should be used judiciously. Over-commenting can clutter the code, making it harder to read.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'Proper use of HTML quotation tags helps structure and present text quotations effectively, while comments help in managing and understanding the code better.',
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
