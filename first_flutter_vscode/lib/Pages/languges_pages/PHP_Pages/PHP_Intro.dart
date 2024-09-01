import 'package:flutter/material.dart';

class PHPIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Introduction',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('What is PHP?'),
          _buildParagraph(
              'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages quickly.'),
          _buildParagraph(
              'PHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP.'),
          _buildParagraph(
              'PHP code is executed on the server, and the result is returned to the browser as plain HTML.'),
          _buildParagraph(
              'PHP files can contain text, HTML, CSS, JavaScript, and PHP code.'),
          _buildParagraph(
              'PHP code is executed on the server, and the result is returned to the browser as plain HTML.'),
          _buildParagraph('PHP files have extension ".php".'),
          _buildHeader('What You Should Already Know'),
          _buildParagraph(
              'Before you continue you should have a basic understanding of the following:'),
          _buildBulletPoints([
            'HTML',
            'CSS',
            'JavaScript'
          ]),
          _buildHeader('What is a PHP File?'),
          _buildBulletPoints([
            'PHP files can contain text, HTML, CSS, JavaScript, and PHP code',
            'PHP code is executed on the server, and the result is returned to the browser as plain HTML',
            'PHP files have extension ".php"'
          ]),
          _buildHeader('What Can PHP Do?'),
          _buildBulletPoints([
            'PHP can generate dynamic page content',
            'PHP can create, open, read, write, delete, and close files on the server',
            'PHP can collect form data',
            'PHP can send and receive cookies',
            'PHP can add, delete, modify data in your database',
            'PHP can restrict users from accessing some pages on your website',
            'PHP can encrypt data'
          ]),
          _buildParagraph(
              'With PHP you are not limited to output HTML. You can output images, PDF files, and even Flash movies. You can also output any text, such as XHTML and XML.'),
          _buildHeader('Why PHP?'),
          _buildBulletPoints([
            'PHP runs on various platforms (Windows, Linux, Unix, Mac OS X, etc.)',
            'PHP is compatible with almost all servers used today (Apache, IIS, etc.)',
            'PHP supports a wide range of databases',
            'PHP is free. Download it from the official PHP resource: www.php.net',
            'PHP is easy to learn and runs efficiently on the server side'
          ]),
          _buildHeader('PHP is Easy to Learn'),
          _buildParagraph(
              'PHP is easy to learn and run efficiently on the server side.')
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points
          .map(
            (point) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '• ',
                    style: TextStyle(color: Colors.cyan, fontSize: 18.0),
                  ),
                  Expanded(
                    child: Text(
                      point,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
