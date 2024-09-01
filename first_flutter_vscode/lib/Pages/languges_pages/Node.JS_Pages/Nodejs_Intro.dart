import 'package:flutter/material.dart';

class NodeJSIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to Node.js',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('What is Node.js?'),
          _buildParagraph(
              'Node.js is an open-source, cross-platform, JavaScript runtime environment that executes JavaScript code outside of a web browser.'),
          _buildParagraph(
              'Node.js lets developers use JavaScript to write command line tools and for server-side scripting—running scripts server-side to produce dynamic web page content before the page is sent to the user\'s web browser.'),
          _buildParagraph(
              'Node.js is built on the V8 JavaScript engine, which is the core of Google Chrome, to execute code at high speed.'),
          _buildHeader('Why Use Node.js?'),
          _buildList([
            'Node.js uses asynchronous programming!',
            'Very Fast: Node.js is built on Google Chrome\'s V8 JavaScript Engine.',
            'Single Programming Language: With Node.js, you can use JavaScript on both the front-end and back-end.',
            'No Buffering: Node.js applications never buffer any data. They simply output the data in chunks.',
          ]),
          _buildHeader('Who Uses Node.js?'),
          _buildParagraph(
              'Node.js is widely used by developers and is supported by many large organizations, including PayPal, Netflix, Uber, and Walmart.'),
          _buildHeader('What Can Node.js Do?'),
          _buildList([
            'Node.js can generate dynamic page content.',
            'Node.js can create, open, read, write, delete, and close files on the server.',
            'Node.js can collect form data.',
            'Node.js can add, delete, and modify data in your database.',
          ]),
          _buildHeader('What You Need to Get Started'),
          _buildParagraph(
              'To start developing with Node.js, you need a text editor to write your code and a command line to execute your scripts.'),
          _buildParagraph(
              'You also need to install Node.js on your computer. Node.js is available for various operating systems such as Windows, macOS, and Linux.'),
          _buildHeader('How to Install Node.js'),
          _buildParagraph(
              'To install Node.js, you can download the installer from the official Node.js website. The installer also includes npm (Node Package Manager).'),
          _buildParagraph(
              'Follow the instructions on the Node.js website for your operating system to install Node.js. Once installed, you can verify the installation by running the following command in your command line:'),
          _buildCodeBlock('node -v'),
          _buildParagraph(
              'If Node.js is installed correctly, you will see the version number of Node.js printed in the terminal.'),
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: 'Times New Roman',
        ),
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    '• $item',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white70,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Courier New',
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
