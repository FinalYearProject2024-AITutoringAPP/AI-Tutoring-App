import 'package:flutter/material.dart';

void main() {
  runApp(JAVAClassConstructorsPage());
}

class JAVAClassConstructorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Constructors',
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
                'Java Constructors',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Constructor?',
                'A constructor in Java is a special method that is used to initialize objects. The constructor is called when an object of a class is created. It can be used to set initial values for object attributes.',
              ),
              _buildContent(
                context,
                'Creating a Constructor',
                'A constructor is a method that has the same name as the class and does not have a return type (not even void). The following example creates a constructor in the Main class:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Creating a Constructor:',
                'public class Main {\n'
                '  int x;  // Create a class attribute\n\n'
                '  // Create a class constructor for the Main class\n'
                '  public Main() {\n'
                '    x = 5;  // Set the initial value for the class attribute x\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    Main myObj = new Main(); // Create an object of class Main\n'
                '    System.out.println(myObj.x); // Print the value of x\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Constructor Parameters',
                'Constructors can also take parameters, which are used to set initial values for attributes. The following example demonstrates a constructor with a parameter:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Constructor with Parameters:',
                'public class Main {\n'
                '  int x;\n\n'
                '  // Constructor with a parameter\n'
                '  public Main(int y) {\n'
                '    x = y;\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    Main myObj = new Main(5);\n'
                '    System.out.println(myObj.x);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Default Constructor',
                'If you do not create a constructor, Java creates a default constructor for you. However, it will not set any initial values for your object attributes. The following example uses the default constructor:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Default Constructor:',
                'public class Main {\n'
                '  int x;\n\n'
                '  public static void main(String[] args) {\n'
                '    Main myObj = new Main();\n'
                '    System.out.println(myObj.x); // Outputs 0\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Multiple Constructors',
                'You can have multiple constructors in one class. Constructors with different parameter lists can be used to initialize objects in different ways:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Multiple Constructors:',
                'public class Main {\n'
                '  int x;\n'
                '  String y;\n\n'
                '  // Constructor with int parameter\n'
                '  public Main(int a) {\n'
                '    x = a;\n'
                '  }\n\n'
                '  // Constructor with int and String parameters\n'
                '  public Main(int a, String b) {\n'
                '    x = a;\n'
                '    y = b;\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    Main obj1 = new Main(5);\n'
                '    Main obj2 = new Main(7, "Hello");\n'
                '    System.out.println(obj1.x); // Outputs 5\n'
                '    System.out.println(obj2.y); // Outputs Hello\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Constructors are special methods in Java used for initializing objects. You can create multiple constructors with different parameters to initialize objects in various ways.',
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
