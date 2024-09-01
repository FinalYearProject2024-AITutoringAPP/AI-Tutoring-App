import 'package:flutter/material.dart';

class PHPEchoPrintPage extends StatelessWidget {
  get name => null;
  
  get result => null;

  @override
  Widget build(BuildContext context) {
    var _SERVER;
    var _POST;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Echo and Print',
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
          _buildHeader('PHP Echo and Print'),
          _buildParagraph(
              'In PHP, both `echo` and `print` are used to output data to the screen. They are language constructs and not functions, which means they can be used without parentheses.'),
          _buildSubHeader('PHP Echo'),
          _buildParagraph(
              '`echo` can be used to output one or more strings. It is slightly faster than `print` and can be used with or without parentheses.'),
          _buildCodeBlock('''<?php
echo "Hello World!";
echo "Hello ", "World!";
?>'''),
          _buildParagraph(
              'You can also output variables and strings combined with `echo`:'),
          _buildCodeBlock('''<?php
$name = "John";
echo "Hello, " . $name . "!";
?>'''),
          _buildSubHeader('PHP Print'),
          _buildParagraph(
              '`print` is used to output a string and always requires parentheses. Unlike `echo`, `print` always returns 1, so it can be used in expressions.'),
          _buildCodeBlock('''<?php
print "Hello World!";
print "Hello " . "World!";
?>'''),
          _buildParagraph(
              'Here’s how you can use `print` with variables and strings:'),
          _buildCodeBlock('''<?php
$name = "John";
$result = print "Hello, " . $name . "!";
echo $result; // Outputs: 1
?>'''),
          _buildSubHeader('Comparison of Echo and Print'),
          _buildParagraph(
              'Key differences between `echo` and `print`:'),
          _buildList([
            '`echo` can take multiple parameters, while `print` can only take one.',
            '`echo` does not return any value, while `print` always returns 1.',
            '`echo` is slightly faster than `print`.',
          ]),
          _buildParagraph(
              'Both `echo` and `print` are widely used and have similar functionality. The choice between them depends on specific needs or personal preference.'),
          _buildSubHeader('Outputting HTML'),
          _buildParagraph(
              'Both `echo` and `print` can be used to output HTML code. For example:'),
          _buildCodeBlock('''<?php
echo "<h1>Hello World!</h1>";
print "<p>This is a paragraph.</p>";
?>'''),
          _buildSubHeader('Escaping Characters'),
          _buildParagraph(
              'When outputting text that includes special characters, you should escape them to avoid issues. For example:'),
          _buildCodeBlock('''<?php
echo "This is a quote: \\"Hello World!\\"";
print 'This is a single quote: \\'Hello World!\\'';
?>'''),
          _buildSubHeader('Using Echo and Print in HTML Forms'),
          _buildParagraph(
              'You can also use `echo` and `print` within HTML forms to output dynamic data:'),
          _buildCodeBlock('''<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST["name"]);
    echo "Hello, " . $name . "!";
}
?>
<form method="post">
    Name: <input type="text" name="name">
    <input type="submit">
</form>'''),
          _buildSubHeader('Summary'),
          _buildParagraph(
              '`echo` and `print` are both effective for outputting data in PHP. `echo` is slightly faster and can take multiple parameters, while `print` always returns 1 and requires parentheses. Understanding their differences can help you choose the right one for your needs.'),
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

  Widget _buildSubHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.cyanAccent,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
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

  Widget _buildList(List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map(
              (item) => Text(
                '- $item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black54,
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontFamily: 'Courier',
          fontSize: 16.0,
        ),
      ),
    );
  }
}
