import 'package:flutter/material.dart';

void main() {
  runApp(JAVAClassEncapsulationPage());
}

class JAVAClassEncapsulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Encapsulation',
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
                'Encapsulation in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is Encapsulation?',
                'Encapsulation in Java is a process of wrapping code and data together into a single unit. It is one of the four fundamental OOP concepts. Encapsulation is used to protect the data from unauthorized access and modification. The data in a class is hidden from other classes and can be accessed only through the methods of its current class.',
              ),
              _buildContent(
                context,
                'Example of Encapsulation',
                'In the below example, the variables of the class `Person` are private, meaning they cannot be accessed directly from outside the class. Instead, public methods are provided to access and update the value of private variables:',
              ),
              _buildCodeSnippet(
                context,
                'Encapsulation Example:',
                'public class Person {\n'
                '  private String name; // private = restricted access\n\n'
                '  // Getter\n'
                '  public String getName() {\n'
                '    return name;\n'
                '  }\n\n'
                '  // Setter\n'
                '  public void setName(String newName) {\n'
                '    this.name = newName;\n'
                '  }\n'
                '}\n\n'
                'class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Person myObj = new Person();\n'
                '    myObj.setName("John");  // Set the value of the name attribute\n'
                '    System.out.println(myObj.getName());  // Get the value of the name attribute\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Why Encapsulation?',
                '1. **Better Control of Class Attributes and Methods**: With encapsulation, you can control the access level of variables and methods. This means that you can hide certain attributes and only allow them to be modified in specific ways.\n'
                '2. **Increased Flexibility**: You can make variables read-only or write-only by providing only getters or setters.\n'
                '3. **Reusability**: Encapsulated classes can be reused by other classes in your application.\n'
                '4. **Ease of Testing**: It is easier to test the encapsulated code, as changes are localized within the class.',
              ),
              _buildContent(
                context,
                'Summary',
                'Encapsulation is a key principle of object-oriented programming that helps to protect an object\'s internal state and hide its implementation details. By providing getters and setters, we can control how the data is accessed and modified.',
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
