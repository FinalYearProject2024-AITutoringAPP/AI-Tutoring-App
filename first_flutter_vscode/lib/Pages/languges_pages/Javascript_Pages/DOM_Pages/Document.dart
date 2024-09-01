import 'package:flutter/material.dart';

class JSDOMDocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript HTML DOM Document',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('The HTML DOM Document Object'),
            _buildParagraph(
              'The `document` object is a property of the `window` object and is used to access the HTML document that is displayed in the browser. The `document` object represents the whole HTML document and allows you to interact with its content.'
            ),
            _buildSectionTitle('Accessing the Document Object'),
            _buildParagraph(
              'You can access the document object using `document` in JavaScript. It provides methods and properties to manipulate the HTML document. Here are some common uses of the document object:'
            ),
            _buildSectionTitle('document.title'),
            _buildParagraph(
              'The `document.title` property sets or returns the title of the document. Example:\n'
              '```javascript\n'
              'document.title = "New Title";\n'
              'console.log(document.title);\n'
              '```\n'
              'This property is used to get or set the title of the web page, which appears in the browser\'s title bar or tab.'
            ),
            _buildSectionTitle('document.URL'),
            _buildParagraph(
              'The `document.URL` property returns the full URL of the document. Example:\n'
              '```javascript\n'
              'console.log(document.URL);\n'
              '```\n'
              'This property is useful for getting the URL of the current page.'
            ),
            _buildSectionTitle('document.domain'),
            _buildParagraph(
              'The `document.domain` property returns the domain of the web page. Example:\n'
              '```javascript\n'
              'console.log(document.domain);\n'
              '```\n'
              'This property is useful for getting the domain name of the current page.'
            ),
            _buildSectionTitle('document.cookie'),
            _buildParagraph(
              'The `document.cookie` property allows you to get or set cookies associated with the document. Example:\n'
              '```javascript\n'
              'document.cookie = "username=John Doe";\n'
              'console.log(document.cookie);\n'
              '```\n'
              'This property is used to manage cookies, which can store small amounts of data in the browser.'
            ),
            _buildSectionTitle('document.body'),
            _buildParagraph(
              'The `document.body` property returns the `<body>` element of the document. Example:\n'
              '```javascript\n'
              'document.body.style.backgroundColor = "lightblue";\n'
              '```\n'
              'This property is used to manipulate the body of the HTML document.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'To learn more about the `document` object and its properties, you can visit the following resources:\n'
              '- [W3Schools - HTML DOM Document](https://www.w3schools.com/js/js_htmldom_document.asp)\n'
              '- [MDN Web Docs - Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    );
  }
}
