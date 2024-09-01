import 'package:flutter/material.dart';

void main() {
  runApp(JAVAOOPPage());
}

class JAVAOOPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java OOP Concepts',
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
                'Object-Oriented Programming (OOP)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is OOP?',
                'Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" to represent data and methods to manipulate that data. Java is an object-oriented programming language, which means it is based on objects and classes. The key concepts of OOP are Encapsulation, Inheritance, Polymorphism, and Abstraction.',
              ),
              _buildContent(
                context,
                'Classes and Objects',
                'In Java, a class is a blueprint for creating objects. A class contains fields (variables) and methods (functions) that define the behavior and characteristics of objects. An object is an instance of a class. You can create multiple objects from the same class, each with its own values for the fields.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'class Car {\n'
                '  // Fields\n'
                '  String color;\n'
                '  String model;\n\n'
                '  // Method\n'
                '  void displayInfo() {\n'
                '    System.out.println("Model: " + model);\n'
                '    System.out.println("Color: " + color);\n'
                '  }\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Car myCar = new Car();\n'
                '    myCar.model = "Toyota";\n'
                '    myCar.color = "Red";\n'
                '    myCar.displayInfo();\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Encapsulation',
                'Encapsulation is the concept of wrapping data (variables) and methods (functions) into a single unit called a class. It is a means of protecting the data from outside interference and misuse. In Java, encapsulation is achieved using access modifiers such as private, protected, and public.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'class Person {\n'
                '  private String name;\n'
                '  private int age;\n\n'
                '  // Getter and Setter methods\n'
                '  public String getName() {\n'
                '    return name;\n'
                '  }\n\n'
                '  public void setName(String name) {\n'
                '    this.name = name;\n'
                '  }\n\n'
                '  public int getAge() {\n'
                '    return age;\n'
                '  }\n\n'
                '  public void setAge(int age) {\n'
                '    this.age = age;\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Inheritance',
                'Inheritance is a mechanism where a new class inherits the properties and methods of an existing class. The new class is called a subclass or derived class, and the existing class is called a superclass or base class. Inheritance allows for code reusability and method overriding.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'class Animal {\n'
                '  void eat() {\n'
                '    System.out.println("This animal eats food.");\n'
                '  }\n'
                '}\n\n'
                'class Dog extends Animal {\n'
                '  void bark() {\n'
                '    System.out.println("The dog barks.");\n'
                '  }\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Dog myDog = new Dog();\n'
                '    myDog.eat();\n'
                '    myDog.bark();\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Polymorphism',
                'Polymorphism allows objects of different classes to be treated as objects of a common superclass. The most common use of polymorphism is when a parent class reference is used to refer to a child class object. Polymorphism can be achieved through method overloading and method overriding.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'class Animal {\n'
                '  void makeSound() {\n'
                '    System.out.println("Animal makes a sound");\n'
                '  }\n'
                '}\n\n'
                'class Dog extends Animal {\n'
                '  @Override\n'
                '  void makeSound() {\n'
                '    System.out.println("Dog barks");\n'
                '  }\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Animal myAnimal = new Dog();\n'
                '    myAnimal.makeSound();\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Abstraction',
                'Abstraction is the concept of hiding the complex implementation details and showing only the essential features of an object. In Java, abstraction is achieved using abstract classes and interfaces. Abstract classes cannot be instantiated and can contain abstract methods that must be implemented by subclasses.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'abstract class Shape {\n'
                '  abstract void draw();\n'
                '}\n\n'
                'class Circle extends Shape {\n'
                '  @Override\n'
                '  void draw() {\n'
                '    System.out.println("Drawing a Circle");\n'
                '  }\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Shape myShape = new Circle();\n'
                '    myShape.draw();\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Summary',
                'Object-Oriented Programming (OOP) in Java helps in organizing and structuring code efficiently. By leveraging the principles of Encapsulation, Inheritance, Polymorphism, and Abstraction, you can create robust and scalable applications. Understanding and applying these concepts is crucial for effective Java programming.',
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
