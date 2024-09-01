import 'package:flutter/material.dart';

void main() {
  runApp(JAVAClassAttributesPage());
}

class JAVAClassAttributesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Class Attributes',
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
                'Java Class Attributes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'Attributes and Methods',
                'In Java, attributes and methods are essentially variables and functions inside a class. Attributes are variables that hold data, while methods are functions that perform actions on this data. Java classes often have many attributes and methods to represent the properties and behavior of an object.',
              ),
              _buildCodeSnippet(
                context,
                'Example of Class Attributes:',
                'public class Car {\n'
                '  String model = "Ford";\n'
                '  String color = "Red";\n'
                '  int year = 2020;\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Accessing Attributes',
                'You can access attributes of an object using the dot notation. For example, if you have an object of the Car class, you can access its attributes as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Accessing Attributes:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Car myCar = new Car();\n'
                '    System.out.println("Model: " + myCar.model);\n'
                '    System.out.println("Color: " + myCar.color);\n'
                '    System.out.println("Year: " + myCar.year);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Modify Attributes',
                'You can modify the value of an attribute after creating the object. Simply assign a new value to the attribute:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Modifying Attributes:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Car myCar = new Car();\n'
                '    myCar.year = 2022;\n'
                '    System.out.println("Updated Year: " + myCar.year);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Multiple Objects',
                'Each object can have its own values for the attributes. For example, if you create two Car objects, each can have different values for the model, color, and year attributes:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Multiple Objects:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Car car1 = new Car();\n'
                '    Car car2 = new Car();\n\n'
                '    car1.model = "Toyota";\n'
                '    car1.color = "Blue";\n'
                '    car1.year = 2021;\n\n'
                '    car2.model = "Honda";\n'
                '    car2.color = "Black";\n'
                '    car2.year = 2022;\n\n'
                '    System.out.println("Car 1: " + car1.model + ", " + car1.color + ", " + car1.year);\n'
                '    System.out.println("Car 2: " + car2.model + ", " + car2.color + ", " + car2.year);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Final Attributes',
                'If you don’t want the ability to override existing values, declare the attribute as final. This means that once a value is assigned, it cannot be changed:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Final Attributes:',
                'public class Car {\n'
                '  final String model = "Ford";\n'
                '  String color = "Red";\n'
                '  int year = 2020;\n'
                '}\n\n'
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Car myCar = new Car();\n'
                '    // myCar.model = "BMW"; // This will generate an error\n'
                '    System.out.println("Model: " + myCar.model);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'In Java, class attributes allow objects to store data. You can access and modify these attributes using dot notation. With the `final` keyword, you can create constants that cannot be modified once they are set.',
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
