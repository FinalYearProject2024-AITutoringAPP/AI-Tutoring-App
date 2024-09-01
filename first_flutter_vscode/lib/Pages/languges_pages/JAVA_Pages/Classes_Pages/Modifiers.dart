import 'package:flutter/material.dart';

void main() {
  runApp(JAVAModifiersPage());
}

class JAVAModifiersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Modifiers',
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
                'Java Modifiers',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              
              _buildContent(
                context,
                'Modifiers in Java',
                'Modifiers are keywords that you add to those definitions to change their meanings. The Java language has a wide variety of modifiers, including the following:'
              ),
              _buildContent(
                context,
                'Access Modifiers',
                'Java provides a number of access modifiers to set access levels for classes, variables, methods, and constructors. The four types of access modifiers are:\n\n'
                '- **default**: Accessible only within the same package. No keyword is used.\n'
                '- **private**: Accessible only within the class.\n'
                '- **protected**: Accessible within the package and subclasses.\n'
                '- **public**: Accessible from any other class.',
              ),
              _buildCodeSnippet(
                context,
                'Example - Access Modifiers',
                'class ModifierExample {\n'
                '  public int publicNum = 10;\n'
                '  private int privateNum = 20;\n'
                '  protected int protectedNum = 30;\n'
                '  int defaultNum = 40;\n\n'
                '  public static void main(String[] args) {\n'
                '    ModifierExample obj = new ModifierExample();\n'
                '    System.out.println("Public: " + obj.publicNum);\n'
                '    System.out.println("Private: " + obj.privateNum);\n'
                '    System.out.println("Protected: " + obj.protectedNum);\n'
                '    System.out.println("Default: " + obj.defaultNum);\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Non-Access Modifiers',
                'Java also provides non-access modifiers to achieve many other functionalities.\n\n'
                '- **static**: Used for creating class methods and variables.\n'
                '- **final**: Used to prevent inheritance or to define constants.\n'
                '- **abstract**: Used to create abstract classes and methods.\n'
                '- **synchronized**: Used for synchronized threads.\n'
                '- **volatile**: Used for threads.',
              ),
              _buildCodeSnippet(
                context,
                'Example - Non-Access Modifiers',
                'class FinalExample {\n'
                '  final int finalNum = 100;\n\n'
                '  public static void main(String[] args) {\n'
                '    FinalExample obj = new FinalExample();\n'
                '    System.out.println("Final: " + obj.finalNum);\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Summary',
                'Modifiers in Java are an essential part of the language. They provide the means to set the access level of classes, attributes, methods, and constructors, and they also allow for more fine-grained control over the behavior of your programs.',
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
