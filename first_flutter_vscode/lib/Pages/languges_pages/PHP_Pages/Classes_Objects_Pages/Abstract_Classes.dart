import 'package:flutter/material.dart';

void main() {
  runApp(PHPAbstractClassesPage());
}

class PHPAbstractClassesPage extends StatelessWidget {
  get rectangle => null;
  
  get dog => null;
  
  get width => null;
  
  get height => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Abstract Classes',
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
                'PHP Abstract Classes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'What are Abstract Classes?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Abstract classes are classes that cannot be instantiated directly. They are meant to be extended by other classes. Abstract classes can contain abstract methods, which are methods without a body that must be implemented by any class that extends the abstract class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Defining an Abstract Class:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
abstract class Animal {
  abstract public function makeSound();

  public function move() {
    echo "The animal moves.";
  }
}
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Extending an Abstract Class:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'When a class extends an abstract class, it must implement all the abstract methods defined in the abstract class.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
class Dog extends Animal {
  public function makeSound() {
    echo "Woof!";
  }
}

$dog = new Dog();
$dog->makeSound(); // Outputs: Woof!
$dog->move();      // Outputs: The animal moves.
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Abstract Methods:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Abstract methods are methods that are declared in an abstract class but have no implementation. Subclasses extending the abstract class must provide their own implementation for these abstract methods.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Example of Abstract Method:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeSnippet(
                code: '''
abstract class Shape {
  abstract public function area();
}

class Rectangle extends Shape {
  private $width;
  private $height;

  public function __construct($width, $height) {
    $this->width = $width;
    $this->height = $height;
  }

  public function area() {
    return $this->width * $this->height;
  }
}

$rectangle = new Rectangle(10, 20);
echo $rectangle->area(); // Outputs: 200
                ''',
              ),
              SizedBox(height: 20.0),
              Text(
                'Summary',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Abstract classes are a crucial concept in object-oriented programming, providing a way to define a common interface and shared behavior for a group of related classes. They allow for the definition of common methods and properties that must be implemented by subclasses, ensuring a consistent structure and behavior.',
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
