import 'package:flutter/material.dart';

class HTMLEditorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Editors',
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
            _buildSectionTitle('HTML Editors Overview'),
            _buildSectionContent(
              'HTML editors are tools that help you create and edit HTML documents. They provide various features to simplify coding, including syntax highlighting, code completion, and error checking. There are many different types of HTML editors, ranging from simple text editors to advanced integrated development environments (IDEs).',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Types of HTML Editors'),
            _buildSectionContent(
              'HTML editors can be categorized into several types based on their features and functionalities:',
            ),
            _buildSectionTitle('1. Text Editors'),
            _buildSectionContent(
              'Text editors are basic tools for writing and editing HTML code. They do not provide advanced features like syntax highlighting or code completion but are lightweight and straightforward to use. Examples include Notepad (Windows) and TextEdit (Mac).',
            ),
            _buildCodeExample(
              '<!-- Example HTML code -->\n'
              '<!DOCTYPE html>\n'
              '<html>\n'
              '  <head>\n'
              '    <title>My Web Page</title>\n'
              '  </head>\n'
              '  <body>\n'
              '    <h1>Hello, World!</h1>\n'
              '    <p>This is a simple HTML document.</p>\n'
              '  </body>\n'
              '</html>',
            ),
            _buildSectionTitle('2. Code Editors'),
            _buildSectionContent(
              'Code editors offer more features than text editors, such as syntax highlighting, code completion, and error checking. They are designed to enhance productivity and make coding easier. Examples include Visual Studio Code, Sublime Text, and Atom.',
            ),
            _buildCodeExample(
              '<!-- Example HTML code -->\n'
              '<!DOCTYPE html>\n'
              '<html>\n'
              '  <head>\n'
              '    <title>My Web Page</title>\n'
              '  </head>\n'
              '  <body>\n'
              '    <h1>Hello, World!</h1>\n'
              '    <p>This is a simple HTML document with enhanced features.</p>\n'
              '  </body>\n'
              '</html>',
            ),
            _buildSectionTitle('3. Integrated Development Environments (IDEs)'),
            _buildSectionContent(
              'IDEs provide a comprehensive set of tools for web development, including HTML editing, debugging, and project management. They offer advanced features such as integrated version control and build automation. Examples include WebStorm and Adobe Dreamweaver.',
            ),
            _buildCodeExample(
              '<!-- Example HTML code -->\n'
              '<!DOCTYPE html>\n'
              '<html>\n'
              '  <head>\n'
              '    <title>My Web Page</title>\n'
              '  </head>\n'
              '  <body>\n'
              '    <h1>Hello, World!</h1>\n'
              '    <p>This is a simple HTML document with IDE features.</p>\n'
              '  </body>\n'
              '</html>',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Choosing the Right Editor'),
            _buildSectionContent(
              'The choice of HTML editor depends on your needs and preferences. If you are just starting with HTML, a basic text editor might be sufficient. As you progress and require more features, you might consider using a code editor or an IDE. Many editors offer free versions or trials, so you can explore different options to find the one that works best for you.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'HTML editors play a crucial role in web development. By choosing the right editor and familiarizing yourself with its features, you can enhance your productivity and improve your coding experience.',
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
