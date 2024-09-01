import 'package:flutter/material.dart';

void main() {
  runApp(JAVAClassesObjectsPage());
}

class JAVAClassesObjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Classes and Objects',
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
                'Java Classes and Objects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Class?',
                'A class is a blueprint from which individual objects are created. It can contain fields (variables) and methods (functions) that define the behavior and state of the objects. Classes are fundamental to object-oriented programming in Java.',
              ),
              _buildCodeSnippet(
                context,
                'Example of a Class:',
                'public class Car {\n'
                '  // Fields\n'
                '  String color;\n'
                '  String model;\n\n'
                '  // Method\n'
                '  void displayInfo() {\n'
                '    System.out.println("Model: " + model);\n'
                '    System.out.println("Color: " + color);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'What is an Object?',
                'An object is an instance of a class. When you create an object, the class blueprint is used to allocate memory for the object and initialize its fields. Each object can have different values for the fields, and each can call the methods defined in the class.',
              ),
              _buildCodeSnippet(
                context,
                'Example of Creating Objects:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    // Creating an object of the Car class\n'
                '    Car myCar = new Car();\n\n'
                '    // Setting field values\n'
                '    myCar.color = "Red";\n'
                '    myCar.model = "Toyota";\n\n'
                '    // Calling method\n'
                '    myCar.displayInfo();\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Access Modifiers',
                'Access modifiers determine the visibility of fields and methods in a class. Java provides four access modifiers:\n'
                '- **public**: Accessible from any other class.\n'
                '- **protected**: Accessible within the same package and by subclasses.\n'
                '- **default**: Accessible only within the same package (no modifier).\n'
                '- **private**: Accessible only within the same class.',
              ),
              _buildCodeSnippet(
                context,
                'Example of Access Modifiers:',
                'public class Person {\n'
                '  // Private field\n'
                '  private String name;\n\n'
                '  // Public method\n'
                '  public void setName(String name) {\n'
                '    this.name = name;\n'
                '  }\n\n'
                '  // Public method\n'
                '  public String getName() {\n'
                '    return name;\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Constructors',
                'A constructor is a special method that is called when an object is instantiated. It initializes the object\'s fields. If you do not provide a constructor, Java provides a default no-argument constructor.',
              ),
              _buildCodeSnippet(
                context,
                'Example of a Constructor:',
                'public class Person {\n'
                '  String name;\n\n'
                '  // Constructor\n'
                '  public Person(String name) {\n'
                '    this.name = name;\n'
                '  }\n\n'
                '  // Method\n'
                '  public void displayInfo() {\n'
                '    System.out.println("Name: " + name);\n'
                '  }\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    // Creating an object with a constructor\n'
                '    Person person = new Person("John Doe");\n'
                '    person.displayInfo();\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Classes and objects are central to Java programming. Understanding how to define classes, create objects, and use constructors and access modifiers is essential for developing robust and maintainable code.',
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
