import 'package:flutter/material.dart';

void main() {
  runApp(JAVAPolymorphismPage());
}

class JAVAPolymorphismPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Polymorphism',
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
                'Polymorphism in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is Polymorphism?',
                'Polymorphism means "many forms", and it occurs when we have many classes that are related to each other by inheritance. Like we specified in the previous chapter; Inheritance lets us inherit attributes and methods from another class. Polymorphism uses those methods to perform different tasks. This allows us to perform a single action in different ways.',
              ),
              _buildContent(
                context,
                'Why Polymorphism?',
                'Polymorphism is useful in scenarios where the exact type of object is not known until runtime. For example, a method might accept objects of type `Animal`, but at runtime, that `Animal` might actually be a `Dog` or a `Cat`. Polymorphism allows the method to use the `sound()` method of the `Dog` class or the `Cat` class, depending on the actual type of object passed to it.',
              ),
              _buildCodeSnippet(
                context,
                'Example of Polymorphism:',
                'class Animal {\n'
                '  public void animalSound() {\n'
                '    System.out.println("The animal makes a sound");\n'
                '  }\n'
                '}\n\n'
                'class Pig extends Animal {\n'
                '  public void animalSound() {\n'
                '    System.out.println("The pig says: wee wee");\n'
                '  }\n'
                '}\n\n'
                'class Dog extends Animal {\n'
                '  public void animalSound() {\n'
                '    System.out.println("The dog says: bow wow");\n'
                '  }\n'
                '}\n\n'
                'class Main {\n'
                '  public static void main(String[] args) {\n'
                '    Animal myAnimal = new Animal();  // Create a Animal object\n'
                '    Animal myPig = new Pig();  // Create a Pig object\n'
                '    Animal myDog = new Dog();  // Create a Dog object\n'
                '    myAnimal.animalSound();\n'
                '    myPig.animalSound();\n'
                '    myDog.animalSound();\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'The Power of Polymorphism',
                'Polymorphism allows us to define one interface and have multiple implementations. This is especially useful in scenarios where multiple types of objects need to be treated in a uniform way, such as when using a collection of objects that share a common parent class.',
              ),
              _buildContent(
                context,
                'Understanding Polymorphism',
                'Polymorphism works because the `animalSound()` method is defined in the parent class `Animal`, and overridden in the `Pig` and `Dog` classes. When we call `animalSound()` on an object of type `Animal`, the correct method is called based on the actual type of the object.',
              ),
              _buildContent(
                context,
                'Conclusion',
                'Polymorphism is a powerful feature of object-oriented programming that allows us to write more flexible and maintainable code. By using polymorphism, we can design our classes and methods in a way that is open for extension, but closed for modification, which is a key principle of object-oriented design.',
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
