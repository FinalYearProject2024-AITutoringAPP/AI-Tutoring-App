import 'package:flutter/material.dart';

class PHPCastingMathConstantsPage extends StatelessWidget {
  get sum => null;
  
  get varr => null;
  
  get float => null;
  
  get str => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Casting, Math, and Constants',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('PHP Type Casting'),
          _buildParagraph(
              'Type casting in PHP allows you to convert a variable from one type to another. PHP supports several casting types:'),
          _buildSubHeader('Casting to Integer'),
          _buildParagraph(
              'To cast a value to an integer, you can use `(int)` or `(integer)` before the variable.'),
          _buildCodeBlock('''<?php
$varr = "10.5";
$int = (int)$varr;
echo $int; // Outputs: 10
?>'''),
          _buildSubHeader('Casting to Float'),
          _buildParagraph(
              'To cast a value to a float, use `(float)` or `(double)` before the variable.'),
          _buildCodeBlock('''<?php
$varr = "10.5";
$float = (float)$varr;
echo $float; // Outputs: 10.5
?>'''),
          _buildSubHeader('Casting to String'),
          _buildParagraph(
              'To cast a value to a string, use `(string)` before the variable.'),
          _buildCodeBlock('''<?php
$varr = 10;
$str = (string)$varr;
echo $str; // Outputs: 10
?>'''),
          _buildSubHeader('Casting to Boolean'),
          _buildParagraph(
              'To cast a value to a boolean, use `(bool)` or `(boolean)` before the variable.'),
          _buildCodeBlock('''<?php
$varr = 1;
$bool = (bool)$varr;
echo $bool ? 'true' : 'false'; // Outputs: true
?>'''),
          _buildSubHeader('PHP Type Juggling'),
          _buildParagraph(
              'PHP automatically converts data types when necessary. This is known as type juggling. For example, if you add a string to a number, PHP converts the string to a number.'),
          _buildCodeBlock('''<?php
$sum = "10" + 5;
echo $sum; // Outputs: 15
?>'''),
          _buildHeader('PHP Math Functions'),
          _buildParagraph(
              'PHP provides several functions for mathematical operations. Some of the most commonly used functions include:'),
          _buildSubHeader('abs()'),
          _buildParagraph(
              'The `abs()` function returns the absolute value of a number.'),
          _buildCodeBlock('''<?php
echo abs(-10); // Outputs: 10
?>'''),
          _buildSubHeader('round()'),
          _buildParagraph(
              'The `round()` function rounds a floating-point number to the nearest integer.'),
          _buildCodeBlock('''<?php
echo round(3.456); // Outputs: 3
echo round(3.556); // Outputs: 4
?>'''),
          _buildSubHeader('ceil()'),
          _buildParagraph(
              'The `ceil()` function rounds a number up to the nearest integer.'),
          _buildCodeBlock('''<?php
echo ceil(3.456); // Outputs: 4
?>'''),
          _buildSubHeader('floor()'),
          _buildParagraph(
              'The `floor()` function rounds a number down to the nearest integer.'),
          _buildCodeBlock('''<?php
echo floor(3.456); // Outputs: 3
?>'''),
          _buildSubHeader('sqrt()'),
          _buildParagraph(
              'The `sqrt()` function returns the square root of a number.'),
          _buildCodeBlock('''<?php
echo sqrt(16); // Outputs: 4
?>'''),
          _buildSubHeader('max() and min()'),
          _buildParagraph(
              'The `max()` function returns the highest value from a list of numbers, while the `min()` function returns the lowest value.'),
          _buildCodeBlock('''<?php
echo max(1, 2, 3, 4); // Outputs: 4
echo min(1, 2, 3, 4); // Outputs: 1
?>'''),
          _buildHeader('PHP Constants'),
          _buildParagraph(
              'Constants are identifiers for simple values. Constants are defined using the `define()` function and cannot be changed once set. PHP has several built-in constants and allows for user-defined constants.'),
          _buildSubHeader('Defining Constants'),
          _buildParagraph(
              'To define a constant, use the `define()` function.'),
          _buildCodeBlock('''<?php
define("SITE_NAME", "My Website");
echo SITE_NAME; // Outputs: My Website
?>'''),
          _buildSubHeader('Built-in Constants'),
          _buildParagraph(
              'PHP has several built-in constants, including:'),
          _buildSubHeader('PHP_VERSION'),
          _buildParagraph(
              'The `PHP_VERSION` constant returns the current PHP version.'),
          _buildCodeBlock('''<?php
echo PHP_VERSION;
?>'''),
          _buildSubHeader('PHP_OS'),
          _buildParagraph(
              'The `PHP_OS` constant returns the operating system PHP is running on.'),
          _buildCodeBlock('''<?php
echo PHP_OS;
?>'''),
          _buildSubHeader('EOL'),
          _buildParagraph(
              'The `EOL` constant returns the end-of-line symbol for the platform PHP is running on.'),
          _buildCodeBlock('''<?php
echo EOL;
?>'''),
          _buildSubHeader('Summary'),
          _buildParagraph(
              'PHP provides robust functionality for type casting, mathematical operations, and constants. Understanding these features is crucial for effective PHP programming.'),
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
