import 'package:flutter/material.dart';

void main() {
  runApp(PHPOOPPage());
}

class PHPOOPPage extends StatelessWidget {
  get model => null;
  
  get color => null;
  
  get car1 => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP OOP - What is OOP?',
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
                'What is Object-Oriented Programming (OOP)?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data in the form of fields, often known as attributes or properties, and code, in the form of procedures, often known as methods. OOP languages, such as PHP, allow you to create classes, which are blueprints for objects, and provide ways to organize and manipulate the data and functionality related to these objects.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'PHP Classes and Objects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In PHP, you can define a class using the `class` keyword. A class is essentially a template for creating objects. Each object created from the class has its own set of attributes and methods. Here is a simple example of a PHP class:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Car {
  public $model;
  public $color;

  public function __construct($model, $color) {
    $this->model = $model;
    $this->color = $color;
  }

  public function display() {
    echo "Model: " . $this->model . "<br>";
    echo "Color: " . $this->color . "<br>";
  }
}

$car1 = new Car("Toyota", "Red");
$car1->display();
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'In this example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '- The `Car` class has two attributes: `$model` and `$color`.\n'
                '- The `__construct` method initializes these attributes when a new `Car` object is created.\n'
                '- The `display` method outputs the car\'s model and color.\n'
                '- A new `Car` object is created with the `new` keyword and the `display` method is called to show its details.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Benefits of OOP',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Object-Oriented Programming provides several benefits, including:\n'
                '- **Encapsulation:** Bundles the data (attributes) and methods (functions) that operate on the data into a single unit, or class.\n'
                '- **Inheritance:** Allows a new class to inherit attributes and methods from an existing class.\n'
                '- **Polymorphism:** Enables methods to do different things based on the object it is acting upon.\n'
                '- **Abstraction:** Hides complex implementation details and shows only the necessary features of the object.',
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
