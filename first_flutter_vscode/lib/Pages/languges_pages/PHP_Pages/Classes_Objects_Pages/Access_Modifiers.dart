import 'package:flutter/material.dart';

void main() {
  runApp(PHPAccessModifiersPage());
}

class PHPAccessModifiersPage extends StatelessWidget {
  get person => null;
  
  get model => null;
  
  get color => null;
  
  get brand => null;
  
  get car => null;
  
  get name => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Access Modifiers',
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
                'PHP Access Modifiers',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'What are Access Modifiers?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Access modifiers control the visibility of properties and methods in a class. In PHP, there are three types of access modifiers:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. **Public**: Properties and methods declared as public are accessible from anywhere, both inside and outside the class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '2. **Protected**: Properties and methods declared as protected can be accessed only within the class itself and by classes derived from that class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '3. **Private**: Properties and methods declared as private can only be accessed within the class itself.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Public Access Modifier:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Car {
  public $color;
  public $model;

  public function __construct($color, $model) {
    $this->color = $color;
    $this->model = $model;
  }

  public function showDetails() {
    echo "Model: " . $this->model . "<br>";
    echo "Color: " . $this->color . "<br>";
  }
}

$car = new Car("Red", "Toyota");
$car->showDetails();
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Protected Access Modifier:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Vehicle {
  protected $brand;

  public function __construct($brand) {
    $this->brand = $brand;
  }
}

class Car extends Vehicle {
  public function showBrand() {
    echo "Brand: " . $this->brand . "<br>";
  }
}

$car = new Car("Honda");
$car->showBrand();
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Private Access Modifier:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Person {
  private $name;

  public function __construct($name) {
    $this->name = $name;
  }

  public function getName() {
    return $this->name;
  }
}

$person = new Person("Alice");
echo $person->getName(); // Outputs: Alice
// echo $person->name; // This will cause an error because $name is private
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Access Modifiers Summary',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Access modifiers help in controlling the accessibility of properties and methods. Using appropriate access modifiers enhances encapsulation and helps maintain the integrity of data in an object-oriented program.',
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
