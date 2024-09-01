import 'package:flutter/material.dart';

class PHPFunctionsPage extends StatelessWidget {
  get func => null;
  
  get name => null;
  
  get result => null;
  
  get count => null;
  
  get b => null;
  
  get x => null;
  
  get callback => null;
  
  get square => null;
  
  get n => null;
  
  get sum => null;
  
  get y => null;
  
  get GLOBALS => null;

  @override
  Widget build(BuildContext context) {
    var a;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Functions',
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
          _buildHeader('PHP Functions'),
          _buildParagraph(
              'A function is a block of code that performs a specific task. Functions allow you to encapsulate code for reuse and organization.'),
          
          _buildSubHeader('Definition'),
          _buildParagraph(
              'To define a function, use the `function` keyword followed by the function name and parentheses. The function body is enclosed in curly braces `{}`.'),
          _buildCodeBlock('''<?php
function sayHello() {
    echo "Hello World!";
}
sayHello();
?>'''),
          
          _buildSubHeader('Function Parameters'),
          _buildParagraph(
              'Functions can accept parameters, which are variables passed into the function. Parameters are defined inside the parentheses.'),
          _buildCodeBlock('''<?php
function greet($name) {
    echo "Hello, $name!";
}
greet("John");
?>'''),
          
          _buildSubHeader('Returning Values'),
          _buildParagraph(
              'A function can return a value using the `return` statement. The return value can be used in expressions or assigned to variables.'),
          _buildCodeBlock('''<?php
function add($a, $b) {
    return $a + $b;
}
$result = add(5, 3);
echo $result; // Outputs: 8
?>'''),
          
          _buildSubHeader('Function Scope'),
          _buildParagraph(
              'Function scope refers to the visibility of variables inside a function. Variables defined inside a function are local to that function.'),
          _buildCodeBlock('''<?php
function myFunction() {
    $x = 5; // Local variable
    echo $x;
}
myFunction(); // Outputs: 5
// echo $x; // Error: $x is not accessible outside the function
?>'''),
          
          _buildSubHeader('Global Variables'),
          _buildParagraph(
              'To access global variables inside a function, use the `global` keyword. Alternatively, you can use the `$GLOBALS` array.'),
          _buildCodeBlock('''<?php
$x = 10;

function myFunction() {
    global $x;
    echo $x;
}
myFunction(); // Outputs: 10
?>'''),
          
          _buildSubHeader('Static Variables'),
          _buildParagraph(
              'Static variables retain their value between function calls. Use the `static` keyword to declare a static variable.'),
          _buildCodeBlock('''<?php
function counter() {
    static $count = 0;
    $count++;
    echo $count;
}
counter(); // Outputs: 1
counter(); // Outputs: 2
?>'''),
          
          _buildSubHeader('Function Overloading'),
          _buildParagraph(
              'PHP does not support function overloading (defining multiple functions with the same name but different parameters) like some other languages.'),
          
          _buildSubHeader('Anonymous Functions'),
          _buildParagraph(
              'Anonymous functions (or closures) are functions without a name. They are often used as callback functions or for functional programming tasks.'),
          _buildCodeBlock('''<?php
$square = function($n) {
    return $n * $n;
};
echo $square(4); // Outputs: 16
?>'''),
          
          _buildSubHeader('Callback Functions'),
          _buildParagraph(
              'Callback functions are functions that are passed as arguments to other functions. They are often used to customize behavior or handle events.'),
          _buildCodeBlock('''<?php
function doOperation($x, $y, $callback) {
    return $callback($x, $y);
}

$sum = function($a, $b) {
    return $a + $b;
};

echo doOperation(5, 3, $sum); // Outputs: 8
?>'''),
          
          _buildSubHeader('Recursion'),
          _buildParagraph(
              'A function is recursive if it calls itself. Recursion is used to solve problems that can be broken down into smaller, similar problems.'),
          _buildCodeBlock('''<?php
function factorial($n) {
    if ($n == 0) {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}
echo factorial(5); // Outputs: 120
?>'''),
          
          _buildSubHeader('Variable Functions'),
          _buildParagraph(
              'Variable functions allow you to call a function using a variable that contains the function name.'),
          _buildCodeBlock('''<?php
function sayHello() {
    echo "Hello World!";
}

$func = "sayHello";
$func(); // Outputs: Hello World!
?>'''),
          
          _buildSubHeader('Include and Require'),
          _buildParagraph(
              'You can include and require files in PHP to reuse functions and other code. `include` and `require` are used to include files, and `include_once` and `require_once` ensure a file is included only once.'),
          _buildCodeBlock('''<?php
// Include a file
include 'functions.php';

// Require a file
require 'functions.php';

// Include file only once
include_once 'functions.php';

// Require file only once
require_once 'functions.php';
?>'''),
          
          _buildSubHeader('Function Reference'),
          _buildParagraph(
              'For a detailed reference of PHP functions, including built-in functions, parameters, and examples, visit the [PHP Manual](https://www.php.net/manual/en/).'),
          
          _buildSubHeader('Summary'),
          _buildParagraph(
              'Functions are a fundamental aspect of PHP programming. They help in organizing code, reusing logic, and managing scope. Understanding functions, their parameters, return values, and advanced concepts like recursion and callbacks is essential for effective PHP development.'),
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
