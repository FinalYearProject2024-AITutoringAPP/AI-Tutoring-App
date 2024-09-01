import 'package:flutter/material.dart';

void main() {
  runApp(JAVAClassMethodsPage());
}

class JAVAClassMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Class Methods',
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
                'Java Class Methods',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Method?',
                'A method is a block of code that performs a specific task. Methods are used to perform certain actions, and they are also known as functions. In Java, a method must be declared within a class.',
              ),
              _buildContent(
                context,
                'Creating a Method',
                'In Java, methods are created inside a class. Here is an example of a method inside a class:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Creating a Method:',
                'public class Main {\n'
                '  static void myMethod() {\n'
                '    System.out.println("Hello World!");\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Calling a Method',
                'To use a method, you must call it. This is known as invoking the method. The following code calls the myMethod method:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Calling a Method:',
                'public class Main {\n'
                '  static void myMethod() {\n'
                '    System.out.println("Hello World!");\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    myMethod();\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Method Parameters',
                'Methods can also have parameters, which are variables that are passed into the method. Parameters are specified inside the parentheses in the method declaration:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Method Parameters:',
                'public class Main {\n'
                '  static void myMethod(String fname) {\n'
                '    System.out.println(fname + " Doe");\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    myMethod("John");\n'
                '    myMethod("Jane");\n'
                '    myMethod("Tom");\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Return Values',
                'Methods can also return values. The return type is declared in the method signature. Here is an example of a method that returns an integer value:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Return Values:',
                'public class Main {\n'
                '  static int myMethod(int x) {\n'
                '    return 5 + x;\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    System.out.println(myMethod(3));\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Method Overloading',
                'In Java, it is possible to have multiple methods with the same name but different parameters. This is known as method overloading:',
              ),
              _buildCodeSnippet(
                context,
                'Example of Method Overloading:',
                'public class Main {\n'
                '  static int plusMethodInt(int x, int y) {\n'
                '    return x + y;\n'
                '  }\n\n'
                '  static double plusMethodDouble(double x, double y) {\n'
                '    return x + y;\n'
                '  }\n\n'
                '  public static void main(String[] args) {\n'
                '    int myNum1 = plusMethodInt(8, 5);\n'
                '    double myNum2 = plusMethodDouble(4.3, 6.26);\n'
                '    System.out.println("int: " + myNum1);\n'
                '    System.out.println("double: " + myNum2);\n'
                '  }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Methods are an essential part of Java programming, providing a way to organize and reuse code. You can create methods with or without parameters, return values from methods, and even overload methods to have multiple versions with different parameter types.',
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
