import 'package:flutter/material.dart';

void main() {
  runApp(JAVANonPrimitiveTypesPage());
}

class JAVANonPrimitiveTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Non-Primitive Types',
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
                'Java Non-Primitive Types',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What are Non-Primitive Data Types?',
                'Non-primitive data types, also known as reference types or complex data types, are used to store more complex data structures. Unlike primitive types, which store data values directly, non-primitive types store references to the data.',
              ),
              _buildContent(
                context,
                'Common Non-Primitive Data Types:',
                '1. **Arrays**: An array is a container object that holds a fixed number of values of a single type. Arrays are used to store multiple values in a single variable.',
              ),
              _buildCodeSnippet(
                context,
                'Array Example:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        int[] numbers = {1, 2, 3, 4, 5};\n'
                '        for (int number : numbers) {\n'
                '            System.out.println(number);\n'
                '        }\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                '',
                '2. **Strings**: A string is a sequence of characters. Strings are used to store text and are represented by the `String` class in Java.',
              ),
              _buildCodeSnippet(
                context,
                'String Example:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        String message = "Hello, World!";\n'
                '        System.out.println(message);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                '',
                '3. **Classes**: A class is a blueprint for creating objects. It defines properties and behaviors that the objects created from the class will have.',
              ),
              _buildCodeSnippet(
                context,
                'Class Example:',
                'public class Person {\n'
                '    String name;\n'
                '    int age;\n'
                '\n'
                '    public void introduce() {\n'
                '        System.out.println("My name is " + name + " and I am " + age + " years old.");\n'
                '    }\n'
                '}\n'
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        Person person = new Person();\n'
                '        person.name = "John";\n'
                '        person.age = 30;\n'
                '        person.introduce();\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                '',
                '4. **Interfaces**: An interface is a reference type, similar to a class, that can contain only constants, method signatures, default methods, static methods, and nested types. Interfaces cannot contain instance fields.',
              ),
              _buildCodeSnippet(
                context,
                'Interface Example:',
                'interface Animal {\n'
                '    void eat();\n'
                '}\n'
                'public class Dog implements Animal {\n'
                '    public void eat() {\n'
                '        System.out.println("Dog is eating.");\n'
                '    }\n'
                '}\n'
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        Dog dog = new Dog();\n'
                '        dog.eat();\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                '',
                '5. **Collections**: Collections are used to store groups of objects. Java provides several collection classes, such as `ArrayList`, `HashSet`, and `HashMap`, each with different features and capabilities.',
              ),
              _buildCodeSnippet(
                context,
                'ArrayList Example:',
                'import java.util.ArrayList;\n'
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        ArrayList<String> list = new ArrayList<>();\n'
                '        list.add("Apple");\n'
                '        list.add("Banana");\n'
                '        for (String fruit : list) {\n'
                '            System.out.println(fruit);\n'
                '        }\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Non-primitive data types in Java are essential for handling more complex data structures and functionalities. They include arrays, strings, classes, interfaces, and collections, each serving a specific purpose in Java programming.',
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
