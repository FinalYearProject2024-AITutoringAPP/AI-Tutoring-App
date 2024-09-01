import 'package:flutter/material.dart';

void main() {
  runApp(JAVAInheritancePage());
}

class JAVAInheritancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Inheritance',
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
                'Inheritance in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is Inheritance?',
                'Inheritance in Java is a mechanism where one class acquires the properties (fields) and behaviors (methods) of a parent class. It is one of the fundamental principles of Object-Oriented Programming (OOP). The class that inherits the properties is called the child class (or subclass), and the class from which the properties are inherited is called the parent class (or superclass).',
              ),
              _buildContent(
                context,
                'Why And When To Use Inheritance?',
                '1. **Reusability**: With inheritance, we can reuse fields and methods of an existing class when we create a new class.\n'
                '2. **Method Overriding**: Inheritance allows for method overriding, which allows a subclass to provide a specific implementation of a method already provided by its superclass.\n'
                '3. **Establishing a Relationship Between Classes**: Inheritance creates a parent-child relationship between classes.',
              ),
              _buildCodeSnippet(
                context,
                'Example of Inheritance:',
                'class Animal {\n'
                '  public void animalSound() {\n'
                '    System.out.println("The animal makes a sound");\n'
                '  }\n'
                '}\n\n'
                'class Dog extends Animal {\n'
                '  public void animalSound() {\n'
                '    System.out.println("The dog says: bow wow");\n'
                '  }\n'
                '}\n\n'
                'class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Dog myDog = new Dog();\n'
                '    myDog.animalSound();\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'The "extends" Keyword',
                'To inherit from a class, use the `extends` keyword. In the example above, the `Dog` class inherits the `Animal` class. This means that the `Dog` class can use the `animalSound()` method of the `Animal` class.',
              ),
              _buildContent(
                context,
                'Method Overriding',
                'Method overriding occurs when a subclass provides a specific implementation of a method that is already defined by its parent class. In the example above, the `Dog` class overrides the `animalSound()` method of the `Animal` class to provide its specific sound.',
              ),
              _buildCodeSnippet(
                context,
                'Another Example with Inheritance:',
                'class Vehicle {\n'
                '  protected String brand = "Ford";         // Vehicle attribute\n'
                '  public void honk() {                    // Vehicle method\n'
                '    System.out.println("Tuut, tuut!");\n'
                '  }\n'
                '}\n\n'
                'class Car extends Vehicle {\n'
                '  private String modelName = "Mustang";    // Car attribute\n'
                '  public static void main(String[] args) {\n'
                '    Car myCar = new Car();\n'
                '    myCar.honk();\n'
                '    System.out.println(myCar.brand + " " + myCar.modelName);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Protected Access Modifier',
                'In the example above, the `brand` attribute is protected, meaning it can be accessed within its own class and by subclasses (and classes within the same package).',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildCodeSnippet(BuildContext context, String title, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.black,
          child: Text(
            code,
            style: TextStyle(
              fontFamily: 'CourierNew',
              fontSize: 16,
              color: Colors.greenAccent,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
