import 'package:flutter/material.dart';

class PHPSyntaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Syntax',
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
          _buildHeader('PHP Syntax'),
          _buildParagraph(
              'A PHP script is executed on the server, and the plain HTML result is sent back to the browser.'),
          _buildSubHeader('Basic PHP Syntax'),
          _buildParagraph(
              'A PHP script can be placed anywhere in the document.'),
          _buildParagraph(
              'A PHP script starts with <?php and ends with ?>:'),
          _buildCodeBlock('''<?php
// PHP code goes here
?>'''),
          _buildParagraph(
              'The default file extension for PHP files is ".php".'),
          _buildParagraph(
              'A PHP file normally contains HTML tags, and some PHP scripting code.'),
          _buildParagraph(
              'Below, we have an example of a simple PHP file, with a PHP script that outputs the text "Hello World!":'),
          _buildCodeBlock('''<!DOCTYPE html>
<html>
<body>

<h1>My first PHP page</h1>

<?php
echo "Hello World!";
?>

</body>
</html>'''),
          _buildSubHeader('PHP Case Sensitivity'),
          _buildParagraph(
              'In PHP, all keywords (e.g., if, else, while, echo, etc.), classes, functions, and user-defined functions are NOT case-sensitive.'),
          _buildParagraph(
              'In the example below, all three echo statements are legal and equal:'),
          _buildCodeBlock('''<?php
ECHO "Hello World!<br>";
echo "Hello World!<br>";
EcHo "Hello World!<br>";
?>'''),
          _buildParagraph(
              'However, all variable names are case-sensitive.'),
          _buildParagraph(
              'In the example below, only the first statement will display the value of the \$color variable (this is because \$color, \$COLOR, and \$coLOR are treated as three different variables):'),
          _buildCodeBlock('''<?php
\$color = "red";
echo "My car is " . \$color . "<br>";
echo "My house is " . \$COLOR . "<br>";
echo "My boat is " . \$coLOR . "<br>";
?>'''),
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
