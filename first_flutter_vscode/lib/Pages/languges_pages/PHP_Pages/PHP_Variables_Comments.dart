import 'package:flutter/material.dart';

class PHPVariablesCommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Variables and Comments',
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
          _buildHeader('PHP Variables'),
          _buildParagraph(
              'In PHP, a variable starts with the \$ sign, followed by the name of the variable.'),
          _buildParagraph(
              'A variable name must start with a letter or the underscore character.'),
          _buildParagraph(
              'A variable name cannot start with a number and it can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ ).'),
          _buildParagraph(
              'Variable names in PHP are case-sensitive (e.g., \$age and \$AGE are two different variables).'),
          _buildCodeBlock('''<?php
\$txt = "Hello world!";
\$x = 5;
\$y = 10.5;

echo \$txt;
echo "<br>";
echo \$x;
echo "<br>";
echo \$y;
?>'''),

          _buildSubHeader('PHP Variable Scope'),
          _buildParagraph(
              'In PHP, variables can be declared anywhere in the script. The scope of a variable is the part of the script where the variable can be referenced/used. PHP has three different variable scopes:'),
          _buildList([
            'Local',
            'Global',
            'Static',
          ]),
          _buildSubHeader('Global and Local Scope'),
          _buildParagraph(
              'A variable declared outside a function has a global scope and can only be accessed outside a function:'),
          _buildCodeBlock('''<?php
\$x = 5; // global scope

function myTest() {
  // using \$x inside this function will generate an error
  echo "<p>Variable x inside function is: \$x</p>";
}
myTest();

echo "<p>Variable x outside function is: \$x</p>";
?>'''),
          _buildParagraph(
              'A variable declared within a function has a local scope and can only be accessed within that function:'),
          _buildCodeBlock('''<?php
function myTest() {
  \$x = 5; // local scope
  echo "<p>Variable x inside function is: \$x</p>";
}
myTest();

// using \$x outside the function will generate an error
echo "<p>Variable x outside function is: \$x</p>";
?>'''),

          _buildSubHeader('PHP The global Keyword'),
          _buildParagraph(
              'The global keyword is used to access a global variable from within a function. To do this, use the global keyword before the variables inside the function:'),
          _buildCodeBlock('''<?php
\$x = 5;
\$y = 10;

function myTest() {
  global \$x, \$y;
  \$y = \$x + \$y;
}

myTest();
echo \$y; // outputs 15
?>'''),

          _buildSubHeader('PHP The static Keyword'),
          _buildParagraph(
              'Normally, when a function is completed/executed, all of its variables are deleted. However, sometimes you want a local variable to not be deleted. To do this, use the static keyword when you first declare the variable:'),
          _buildCodeBlock('''<?php
function myTest() {
  static \$x = 0;
  echo \$x;
  \$x++;
}

myTest();
myTest();
myTest();
?>'''),

          _buildHeader('PHP Comments'),
          _buildParagraph(
              'A comment in PHP code is a line that is not read/executed as part of the program. Its only purpose is to be read by someone who is looking at the code. Comments are very useful in large applications, because they help to explain what the code is doing.'),
          _buildSubHeader('Single-line Comments'),
          _buildParagraph(
              'A single-line comment starts with //. Any text between // and the end of the line will be ignored by PHP.'),
          _buildCodeBlock('''<?php
// This is a single-line comment

# This is also a single-line comment
?>'''),

          _buildSubHeader('Multi-line Comments'),
          _buildParagraph(
              'A multi-line comment starts with /* and ends with */. Any text between /* and */ will be ignored by PHP.'),
          _buildCodeBlock('''<?php
/*
This is a multi-line comment block
that spans over multiple
lines
*/
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
