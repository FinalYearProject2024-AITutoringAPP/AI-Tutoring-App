import 'package:flutter/material.dart';

void main() {
  runApp(JAVAIfElsePage());
}

class JAVAIfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java If-Else Statements',
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
                'If-Else Statements in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'The if Statement',
                'The `if` statement allows you to execute a block of code if its condition evaluates to true. It is used to test a specific condition and execute the code block accordingly.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'if (x > 10) {\n'
                '  System.out.println("x is greater than 10");\n'
                '}',
              ),
              
              _buildContent(
                context,
                'The if-else Statement',
                'The `if-else` statement is used when you need to execute one block of code if the condition is true and another block if the condition is false.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'if (x > 10) {\n'
                '  System.out.println("x is greater than 10");\n'
                '} else {\n'
                '  System.out.println("x is not greater than 10");\n'
                '}',
              ),
              
              _buildContent(
                context,
                'The if-else if-else Statement',
                'The `if-else if-else` statement allows you to test multiple conditions. If the condition in the `if` statement is false, the `else if` statements are evaluated. If none of these conditions are true, the `else` block is executed.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'if (x > 10) {\n'
                '  System.out.println("x is greater than 10");\n'
                '} else if (x == 10) {\n'
                '  System.out.println("x is equal to 10");\n'
                '} else {\n'
                '  System.out.println("x is less than 10");\n'
                '}',
              ),
              
              _buildContent(
                context,
                'Shorthand If-Else (Ternary Operator)',
                'The shorthand `if-else` statement, also known as the ternary operator, provides a concise way to evaluate a condition and return one of two values based on whether the condition is true or false.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'int result = (x > 10) ? 1 : 0;\n'
                'System.out.println(result); // Output will be 1 if x > 10, otherwise 0',
              ),
              
              _buildContent(
                context,
                'Summary',
                'In Java, `if-else` statements are used to control the flow of execution based on conditions. The `if` statement executes code if the condition is true, while `else` provides an alternative path if the condition is false. `else if` allows for multiple conditions, and the ternary operator offers a shorthand way to handle simple conditional logic.',
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
