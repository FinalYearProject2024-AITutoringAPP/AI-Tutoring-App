import 'package:flutter/material.dart';

void main() {
  runApp(PHPInheritancePage());
}

class PHPInheritancePage extends StatelessWidget {
  get child => null;
  
  get name => null;
  
  get age => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Inheritance',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PHP Inheritance',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'What is Inheritance?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Inheritance is a mechanism in object-oriented programming that allows a class to use methods and properties of another class. In PHP, the class that is inherited from is called the "parent" class, and the class that inherits is called the "child" class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Inheritance allows for code reusability and the creation of a hierarchical class structure.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Defining a Parent and Child Class:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Parent {
  public $name;

  public function __construct($name) {
    $this->name = $name;
  }

  public function showName() {
    echo "Name: " . $this->name . "<br>";
  }
}

class Child extends Parent {
  public $age;

  public function __construct($name, $age) {
    parent::__construct($name);
    $this->age = $age;
  }

  public function showAge() {
    echo "Age: " . $this->age . "<br>";
  }
}

$child = new Child("John", 25);
$child->showName();
$child->showAge();
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accessing Parent Class Methods and Properties:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A child class inherits all public and protected methods and properties from the parent class. It can also override methods of the parent class if needed.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Parent {
  public $name;

  public function __construct($name) {
    $this->name = $name;
  }

  public function showName() {
    echo "Name: " . $this->name . "<br>";
  }
}

class Child extends Parent {
  public function showName() {
    echo "Child Name: " . $this->name . "<br>";
  }
}

$child = new Child("John");
$child->showName(); // Outputs: Child Name: John
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Using the `parent` Keyword:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The `parent` keyword is used to access methods and properties from the parent class within the child class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Parent {
  public function showName() {
    echo "Parent Name<br>";
  }
}

class Child extends Parent {
  public function showName() {
    parent::showName();
    echo "Child Name<br>";
  }
}

$child = new Child();
$child->showName(); // Outputs: Parent Name<br> Child Name<br>
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Conclusion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Inheritance is a powerful feature of object-oriented programming that promotes code reuse and simplifies the development of complex systems. Understanding how to properly use inheritance can greatly enhance your PHP programming skills.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodeSnippet extends StatelessWidget {
  final String code;

  CodeSnippet({required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontFamily: 'Courier New',
        ),
      ),
    );
  }
}
