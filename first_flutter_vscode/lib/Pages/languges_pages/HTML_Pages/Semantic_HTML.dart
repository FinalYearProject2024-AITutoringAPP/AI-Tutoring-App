import 'package:flutter/material.dart';

class HTMLSemanticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML5 Semantic Elements',
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
            _buildSectionTitle('Introduction to HTML5 Semantic Elements'),
            _buildSectionContent(
              'HTML5 introduced several new elements that provide meaning to the structure of a web page. These semantic elements clearly describe their meaning in a human- and machine-readable way.',
            ),
            _buildSectionContent(
              'Examples of non-semantic elements:'
            ),
            _buildCodeExample(
              '<div></div>\n'
              '<span></span>',
            ),
            _buildSectionContent(
              'Examples of semantic elements:'
            ),
            _buildCodeExample(
              '<header></header>\n'
              '<article></article>\n'
              '<footer></footer>',
            ),
            _buildSectionTitle('Why Semantic Elements?'),
            _buildSectionContent(
              '1. Search engines: Semantic elements help search engines understand the structure and content of web pages.\n'
              '2. Screen readers: Assistive technologies can read and interpret semantic elements more effectively, making web content more accessible.\n'
              '3. Web development: Semantic elements provide a more meaningful structure for web developers and make the code easier to read and maintain.',
            ),
            _buildSectionTitle('List of Semantic Elements'),
            _buildSectionContent(
              'Here are some of the most commonly used semantic elements introduced in HTML5:',
            ),
            _buildSectionContent('1. <header> Element'),
            _buildSectionContent(
              'The `<header>` element represents a container for introductory content or a set of navigational links. It typically contains one or more heading elements (`<h1>`-`<h6>`), a logo or icon, and authorship information.',
            ),
            _buildCodeExample(
              '<header>\n'
              '  <h1>Welcome to My Website</h1>\n'
              '  <nav>\n'
              '    <a href="#home">Home</a>\n'
              '    <a href="#about">About</a>\n'
              '    <a href="#contact">Contact</a>\n'
              '  </nav>\n'
              '</header>',
            ),
            _buildSectionContent('2. <nav> Element'),
            _buildSectionContent(
              'The `<nav>` element is used to define a block of navigation links. The `<nav>` element is intended only for major blocks of navigation links.',
            ),
            _buildCodeExample(
              '<nav>\n'
              '  <a href="#home">Home</a>\n'
              '  <a href="#about">About</a>\n'
              '  <a href="#services">Services</a>\n'
              '  <a href="#contact">Contact</a>\n'
              '</nav>',
            ),
            _buildSectionContent('3. <section> Element'),
            _buildSectionContent(
              'The `<section>` element represents a standalone section that can be distributed across various platforms. Typically, sections have a heading.',
            ),
            _buildCodeExample(
              '<section>\n'
              '  <h2>About Us</h2>\n'
              '  <p>We are a company dedicated to providing excellent service.</p>\n'
              '</section>',
            ),
            _buildSectionContent('4. <article> Element'),
            _buildSectionContent(
              'The `<article>` element represents independent, self-contained content that could be independently distributed or reused, such as blog posts, forum posts, news articles, etc.',
            ),
            _buildCodeExample(
              '<article>\n'
              '  <h2>Understanding HTML5</h2>\n'
              '  <p>HTML5 is the latest version of the HTML standard.</p>\n'
              '</article>',
            ),
            _buildSectionContent('5. <aside> Element'),
            _buildSectionContent(
              'The `<aside>` element represents a section of a document that is related to the content around it, but can be considered separate from that content. It is typically used for sidebars, pull quotes, or other tangential content.',
            ),
            _buildCodeExample(
              '<aside>\n'
              '  <h2>Related Content</h2>\n'
              '  <p>Check out our other articles on HTML5.</p>\n'
              '</aside>',
            ),
            _buildSectionContent('6. <footer> Element'),
            _buildSectionContent(
              'The `<footer>` element represents a footer for its nearest ancestor sectioning content or sectioning root element. It typically contains information about the author, copyright information, and links to related documents.',
            ),
            _buildCodeExample(
              '<footer>\n'
              '  <p>&copy; 2024 MyWebsite.com</p>\n'
              '  <a href="#privacy">Privacy Policy</a>\n'
              '  <a href="#terms">Terms of Service</a>\n'
              '</footer>',
            ),
            _buildSectionTitle('Other HTML5 Semantic Elements'),
            _buildSectionContent(
              'In addition to the main semantic elements, HTML5 also introduced the following elements:',
            ),
            _buildSectionContent(
              '- `<main>`: Specifies the main content of a document\n'
              '- `<figure>`: Represents self-contained content, like illustrations, diagrams, photos, code listings, etc.\n'
              '- `<figcaption>`: Represents a caption for the content of the `<figure>` element\n'
              '- `<mark>`: Represents highlighted text\n'
              '- `<time>`: Represents a specific time or date',
            ),
            _buildCodeExample(
              '<main>\n'
              '  <h1>Main Content</h1>\n'
              '  <p>This is the main content of the page.</p>\n'
              '</main>\n\n'
              '<figure>\n'
              '  <img src="image.jpg" alt="A beautiful scenery">\n'
              '  <figcaption>A beautiful scenery</figcaption>\n'
              '</figure>',
            ),
            _buildSectionTitle('Browser Support'),
            _buildSectionContent(
              'Most modern browsers support the new HTML5 semantic elements. For older browsers like Internet Explorer 8 and earlier, these elements are treated as inline elements and require special handling with CSS or JavaScript to work properly.',
            ),
            _buildCodeExample(
              'header, section, footer, aside, nav, article {\n'
              '  display: block;\n'
              '}',
            ),
            _buildSectionTitle('Conclusion'),
            _buildSectionContent(
              'HTML5 semantic elements make web pages more meaningful, accessible, and easier to maintain. They also improve SEO and provide a better user experience for assistive technologies.',
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
