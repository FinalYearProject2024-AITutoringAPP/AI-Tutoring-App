import 'package:flutter/material.dart';

void main() {
  runApp(PHPConstructorPage());
}

class PHPConstructorPage extends StatelessWidget {
  get car1 => null;
  
  get color => null;
  
  get model => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Constructors',
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
                'PHP Constructors',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'What is a Constructor?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A constructor is a special function in a class that is automatically called when an object is created. It is used to initialize the object’s properties.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In PHP, a constructor is a method with the same name as the class and uses the `__construct()` keyword.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Defining a Constructor:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
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
                'Automatic Initialization:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'When an object is created using the `new` keyword, the constructor is automatically called to initialize the object’s properties.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Automatic Initialization:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
$car1 = new Car("Toyota", "Red"); // Constructor is called here
$car1->display(); // Outputs: Model: Toyota <br> Color: Red
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Constructor Overloading:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'PHP does not support constructor overloading, which means you cannot have multiple constructors in the same class with different parameters.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'However, you can use default parameter values or variable-length argument lists to achieve similar functionality.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Conclusion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constructors are essential for initializing objects and ensuring that they start with a valid state. Understanding how to use constructors effectively is a fundamental part of object-oriented programming in PHP.',
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
