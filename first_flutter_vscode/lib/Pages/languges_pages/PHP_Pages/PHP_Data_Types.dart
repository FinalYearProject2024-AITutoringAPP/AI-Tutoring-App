import 'package:flutter/material.dart';

class PHPDataTypesStringsPage extends StatelessWidget {
  get sum => null;
  
  get float => null;
  
  get str1 => null;
  
  get str2 => null;
  
  get str => null;
  
  get string => null;
  
  get string2 => null;
  
  get string1 => null;
  
  get number => null;
  
  get color => null;
  
  get colors => null;
  
  get ages => null;
  
  get car => null;
  
  get varr => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Data Types and Strings',
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
          _buildHeader('PHP Data Types'),
          _buildParagraph(
              'PHP supports a range of data types, including scalar types (integers, floats, booleans, and strings) and compound types (arrays and objects). Here\'s a detailed look at each type:'),
          _buildSubHeader('Integer'),
          _buildParagraph(
              'An integer is a non-decimal number. PHP integers can be either positive or negative and are platform-dependent. Typically, they range from -2,147,483,648 to 2,147,483,647.'),
          _buildCodeBlock('''<?php
$int = 123;
var_dump($int); // int(123)
?>'''),
          _buildSubHeader('Float'),
          _buildParagraph(
              'A float (or double) represents a number with a decimal point. The precision of floats is platform-dependent, and PHP will often round numbers to fit the precision of the platform.'),
          _buildCodeBlock('''<?php
$float = 3.14;
var_dump($float); // float(3.14)
?>'''),
          _buildSubHeader('Boolean'),
          _buildParagraph(
              'A boolean represents two possible states: TRUE or FALSE. Booleans are often used in conditional statements.'),
          _buildCodeBlock('''<?php
$bool = true;
var_dump($bool); // bool(true)
?>'''),
          _buildSubHeader('String'),
          _buildParagraph(
  'A string is a sequence of characters enclosed in single quotes (\'\') or double quotes (\\""). PHP supports various string operations and functions.'),
_buildCodeBlock('''<?php
$str1 = 'Hello World!';
$str2 = "Hello World!";
var_dump($str1); // string(12) "Hello World!"
var_dump($str2); // string(12) "Hello World!"
?>'''),
          _buildSubHeader('String Length'),
          _buildParagraph(
              'You can get the length of a string using the `strlen()` function. The function returns the number of characters in a string.'),
          _buildCodeBlock('''<?php
$str = "Hello World!";
echo strlen($str); // Outputs: 12
?>'''),
          _buildSubHeader('String Position'),
          _buildParagraph(
              'To find the position of a substring within a string, use the `strpos()` function.'),
          _buildCodeBlock('''<?php
$string = "Hello World!";
echo strpos($string, "World"); // Outputs: 6
?>'''),
          _buildSubHeader('String Replacement'),
          _buildParagraph(
              'Use `str_replace()` to replace text within a string.'),
          _buildCodeBlock('''<?php
$string = "Hello World!";
echo str_replace("World", "PHP", $string); // Outputs: Hello PHP!
?>'''),
          _buildSubHeader('String Case Conversion'),
          _buildParagraph(
              'PHP provides functions for converting strings to uppercase and lowercase: `strtoupper()` and `strtolower()`.'),
          _buildCodeBlock('''<?php
$string = "Hello World!";
echo strtoupper($string); // Outputs: HELLO WORLD!
echo strtolower($string); // Outputs: hello world!
?>'''),
          _buildSubHeader('String Concatenation'),
          _buildParagraph(
              'Strings can be concatenated using the `.` operator.'),
          _buildCodeBlock('''<?php
$string1 = "Hello";
$string2 = "World";
echo $string1 . " " . $string2; // Outputs: Hello World
?>'''),
          _buildSubHeader('String Slicing'),
          _buildParagraph(
              'Extract parts of a string using `substr()`.'),
          _buildCodeBlock('''<?php
$string = "Hello World!";
echo substr($string, 7); // Outputs: World!
echo substr($string, 0, 5); // Outputs: Hello
?>'''),
          _buildSubHeader('String Escaping'),
          _buildParagraph(
              'To escape special characters in a string, use backslashes (`\`). For example, `\\` to escape a backslash and `\"` to escape a double quote.'),
          _buildCodeBlock('''<?php
$string = "This is a backslash: \\\\ and this is a quote: \\"";
echo $string;
?>'''),
          _buildSubHeader('String Trimming'),
          _buildParagraph(
              'Remove whitespace or other predefined characters from the beginning and end of a string using `trim()`, `ltrim()`, and `rtrim()`.'),
          _buildCodeBlock('''<?php
$string = "   Hello World!   ";
echo trim($string); // Outputs: Hello World!
echo ltrim($string); // Outputs: Hello World!   
echo rtrim($string); // Outputs:    Hello World!
?>'''),
          _buildSubHeader('String Padding'),
          _buildParagraph(
              'You can pad a string to a certain length with `str_pad()`.'),
          _buildCodeBlock('''<?php
$string = "Hello";
echo str_pad($string, 10, " "); // Outputs: "Hello     "
?>'''),
          _buildSubHeader('String Repeat'),
          _buildParagraph(
              'Repeat a string a specified number of times using `str_repeat()`.'),
          _buildCodeBlock('''<?php
$string = "Hello";
echo str_repeat($string, 3); // Outputs: HelloHelloHello
?>'''),
          _buildSubHeader('String Formatting'),
          _buildParagraph(
              'Strings can be formatted using `printf()` and `sprintf()`. These functions allow you to format numbers, strings, and other variables in various ways.'),
          _buildCodeBlock('''<?php
$number = 123.456;
printf("Formatted number: %.2f", $number); // Outputs: Formatted number: 123.46
?>'''),
          _buildSubHeader('Arrays'),
          _buildParagraph(
              'An array is a data structure that can hold multiple values. PHP supports both indexed arrays (with numeric keys) and associative arrays (with named keys).'),
          _buildCodeBlock('''<?php
// Indexed array
$colors = array("Red", "Green", "Blue");
echo $colors[0]; // Outputs: Red

// Associative array
$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);
echo $ages["Peter"]; // Outputs: 35
?>'''),
          _buildSubHeader('Objects'),
          _buildParagraph(
              'An object is an instance of a class and can hold properties and methods. PHP classes and objects are used to implement object-oriented programming.'),
          _buildCodeBlock('''<?php
class Car {
    public $color;
    
    public function __construct($color) {
        $this->color = $color;
    }
    
    public function getColor() {
        return $this->color;
    }
}

$car = new Car("Red");
echo $car->getColor(); // Outputs: Red
?>'''),
          _buildSubHeader('NULL'),
          _buildParagraph(
              'The `NULL` data type represents a variable with no value. A variable is considered `NULL` if it has been assigned the constant `NULL`, or if it has not been initialized.'),
          _buildCodeBlock('''<?php
$varr = NULL;
var_dump($varr); // NULL
?>'''),
          _buildSubHeader('PHP Type Casting'),
          _buildParagraph(
              'PHP supports type casting, which allows you to convert a value from one data type to another. This is done using casting operators like `(int)`, `(float)`, `(string)`, and `(bool)`.'),
          _buildCodeBlock('''<?php
$varr = "10.5";
$int = (int)$varr;
$float = (float)$varr;
echo $int; // Outputs: 10
echo $float; // Outputs: 10.5
?>'''),
          _buildSubHeader('Type Juggling'),
          _buildParagraph(
              'PHP automatically converts data types when needed, a feature known as type juggling. For example, if you add a string to a number, PHP will convert the string to a number.'),
          _buildCodeBlock('''<?php
$sum = "10" + 5;
echo $sum; // Outputs: 15
?>'''),
          _buildSubHeader('Summary'),
          _buildParagraph(
              'PHP supports various data types and provides numerous functions for manipulating strings. Understanding these types and operations is crucial for effective PHP programming.'),
        ]
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

