import 'package:flutter/material.dart';

class PHPExceptionHandlingPage extends StatelessWidget {
  get user => null;
  
  get e => null;
  
  get a => null;
  
  get b => null;
  
  get value => null;
  
  get age => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Exception Handling',
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
          _buildHeader('PHP Exception Handling'),
          _buildParagraph(
              'Exception handling in PHP allows you to manage errors and exceptions in a more flexible and controlled manner. It helps in catching and handling runtime errors in a structured way.'),

          _buildSubHeader('What is an Exception?'),
          _buildParagraph(
              'An exception is an event that disrupts the normal flow of a program. In PHP, exceptions are represented by the `Exception` class, and you can use `try`, `catch`, and `finally` blocks to handle them.'),

          _buildSubHeader('Basic Exception Handling'),
          _buildParagraph(
              'To handle exceptions in PHP, use a `try` block to execute code that might throw an exception and a `catch` block to handle the exception.'),
          _buildCodeBlock('''<?php
try {
    // Code that may throw an exception
    throw new Exception("An error occurred!");
} catch (Exception $e) {
    // Handle the exception
    echo "Caught exception: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Multiple Catch Blocks'),
          _buildParagraph(
              'You can have multiple `catch` blocks to handle different types of exceptions.'),
          _buildCodeBlock('''<?php
try {
    // Code that may throw an exception
    throw new Exception("A generic error occurred!");
} catch (InvalidArgumentException $e) {
    // Handle invalid argument exceptions
    echo "Caught InvalidArgumentException: " . $e->getMessage();
} catch (Exception $e) {
    // Handle general exceptions
    echo "Caught exception: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Finally Block'),
          _buildParagraph(
              'The `finally` block is used to execute code regardless of whether an exception was thrown or not.'),
          _buildCodeBlock('''<?php
try {
    // Code that may throw an exception
    throw new Exception("An error occurred!");
} catch (Exception $e) {
    // Handle the exception
    echo "Caught exception: " . $e->getMessage();
} finally {
    // Code that will always be executed
    echo "This will always be executed.";
}
?>'''),

          _buildSubHeader('Custom Exceptions'),
          _buildParagraph(
              'You can create custom exception classes by extending the `Exception` class. This allows you to handle specific types of exceptions more effectively.'),
          _buildCodeBlock('''<?php
class MyException extends Exception {
    // Custom exception class
}

try {
    throw new MyException("Custom exception thrown!");
} catch (MyException $e) {
    echo "Caught MyException: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Exception Hierarchy'),
          _buildParagraph(
              'Exceptions in PHP are part of a class hierarchy. The base class is `Exception`, and all other exception classes inherit from it.'),
          _buildCodeBlock('''<?php
// Base Exception class
class MyException extends Exception {}

// Custom exception class
class CustomException extends MyException {}

try {
    throw new CustomException("Custom exception!");
} catch (CustomException $e) {
    echo "Caught CustomException: " . $e->getMessage();
} catch (MyException $e) {
    echo "Caught MyException: " . $e->getMessage();
} catch (Exception $e) {
    echo "Caught Exception: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Throwing Exceptions'),
          _buildParagraph(
              'You can throw exceptions using the `throw` keyword followed by an instance of the `Exception` class or a custom exception class.'),
          _buildCodeBlock('''<?php
function divide($a, $b) {
    if ($b == 0) {
        throw new Exception("Division by zero!");
    }
    return $a / $b;
}

try {
    echo divide(10, 0);
} catch (Exception $e) {
    echo "Caught exception: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Exception Handling Best Practices'),
          _buildParagraph(
              'When handling exceptions, ensure you provide meaningful messages, avoid catching generic exceptions, and use custom exceptions for specific error conditions.'),
          
          _buildSubHeader('Exception Handling with Functions'),
          _buildParagraph(
              'You can also use exception handling within functions to manage errors that occur during function execution.'),
          _buildCodeBlock('''<?php
function processValue($value) {
    if (!is_numeric($value)) {
        throw new InvalidArgumentException("Invalid argument: Must be numeric.");
    }
    return $value * 2;
}

try {
    echo processValue("text");
} catch (InvalidArgumentException $e) {
    echo "Caught InvalidArgumentException: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Exception Handling in Object-Oriented Programming'),
          _buildParagraph(
              'Exception handling can also be integrated into object-oriented programming by using custom exceptions in class methods.'),
          _buildCodeBlock('''<?php
class User {
    public function setAge($age) {
        if ($age < 0) {
            throw new InvalidArgumentException("Age cannot be negative.");
        }
        $this->age = $age;
    }
}

try {
    $user = new User();
    $user->setAge(-1);
} catch (InvalidArgumentException $e) {
    echo "Caught InvalidArgumentException: " . $e->getMessage();
}
?>'''),

          _buildSubHeader('Summary'),
          _buildParagraph(
              'Exception handling in PHP helps manage errors gracefully. By using `try`, `catch`, and `finally` blocks, as well as creating custom exceptions, you can control error flow and ensure that your application handles errors in a predictable manner.'),
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
