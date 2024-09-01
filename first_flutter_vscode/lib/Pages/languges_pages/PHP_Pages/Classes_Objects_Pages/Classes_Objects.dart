import 'package:flutter/material.dart';

void main() {
  runApp(PHPClassesObjectsPage());
}

class PHPClassesObjectsPage extends StatelessWidget {
  get car1 => null;
  
  get color => null;
  
  get model => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Classes and Objects',
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
                'PHP Classes and Objects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'PHP Classes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A class is a user-defined blueprint or prototype from which objects are created. In PHP, you use the `class` keyword to define a class. The class encapsulates data and functions into a single entity.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of a PHP Class:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
                'Creating Objects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To create an object from a class, you use the `new` keyword followed by the class name and parentheses. You can then call methods on the object or access its properties.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Creating an Object:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
$car1 = new Car("Toyota", "Red");
$car1->display();
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accessing Object Properties and Methods',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can access object properties and methods using the `->` operator. This allows you to interact with the data and functionality encapsulated in the object.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example of Accessing Properties and Methods:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
echo $car1->model; // Outputs: Toyota
$car1->display(); // Outputs: Model: Toyota <br> Color: Red
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Conclusion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Understanding classes and objects is fundamental to object-oriented programming. PHP’s support for classes allows you to create reusable code and model real-world entities effectively.',
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
