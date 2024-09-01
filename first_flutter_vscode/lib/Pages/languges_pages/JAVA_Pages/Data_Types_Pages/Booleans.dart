import 'package:flutter/material.dart';

void main() {
  runApp(JAVABooleansPage());
}

class JAVABooleansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Booleans',
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
                'Java Booleans',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Boolean?',
                'In Java, a boolean is a data type that can hold one of two values: true or false. It is often used for conditional statements and logical operations.',
              ),
              _buildContent(
                context,
                'Boolean Values',
                'Boolean values are used to represent binary states: true or false. These values are often the result of comparison operations or logical expressions.',
              ),
              _buildContent(
                context,
                'Boolean Example:',
                'Here is an example of how to use boolean values in Java:',
              ),
              _buildCodeSnippet(
                context,
                'Example Code:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        boolean isJavaFun = true;\n'
                '        boolean isFishTasty = false;\n'
                '        System.out.println("Is Java fun? " + isJavaFun);\n'
                '        System.out.println("Is fish tasty? " + isFishTasty);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Boolean Expressions',
                'Boolean expressions are used in conditional statements and loops. They evaluate to true or false and are crucial for controlling the flow of a program.',
              ),
              _buildContent(
                context,
                'Common Boolean Operations',
                'Java provides several operators for boolean values:',
              ),
              _buildBulletPoint(
                context,
                '1. AND (&&): True if both operands are true',
              ),
              _buildBulletPoint(
                context,
                '2. OR (||): True if at least one operand is true',
              ),
              _buildBulletPoint(
                context,
                '3. NOT (!): True if the operand is false',
              ),
              _buildContent(
                context,
                'Boolean Example with Conditional Statements:',
                'Here is an example of using boolean expressions in conditional statements:',
              ),
              _buildCodeSnippet(
                context,
                'Example Code:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        int age = 20;\n'
                '        boolean canVote = age >= 18;\n'
                '        if (canVote) {\n'
                '            System.out.println("You are eligible to vote.");\n'
                '        } else {\n'
                '            System.out.println("You are not eligible to vote.");\n'
                '        }\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Booleans in Java are used to represent true/false values and are essential for conditional logic and decision-making in programs. Boolean expressions and operations are used to control the flow of execution based on conditions.',
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

  Widget _buildBulletPoint(BuildContext context, String bullet) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.brightness_1,
          size: 10,
          color: Colors.white,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            bullet,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
        ),
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
