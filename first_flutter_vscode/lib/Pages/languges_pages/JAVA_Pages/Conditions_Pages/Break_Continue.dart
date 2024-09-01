import 'package:flutter/material.dart';

void main() {
  runApp(JAVABreakContinuePage());
}

class JAVABreakContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Break and Continue',
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
                'Break and Continue Statements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is the Break Statement?',
                'The `break` statement is used to exit from a loop or a switch statement. When the `break` statement is executed, the loop or switch is terminated immediately, and control is transferred to the statement following the loop or switch.',
              ),
              _buildContent(
                context,
                'Syntax of Break Statement',
                'The syntax of the `break` statement is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 10; i++) {\n'
                '  if (i == 5) {\n'
                '    break;\n'
                '  }\n'
                '  System.out.println(i);\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of Break Statement',
                'Here is an example of using the `break` statement to exit a `for` loop when `i` is equal to 5:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 10; i++) {\n'
                '  if (i == 5) {\n'
                '    break;\n'
                '  }\n'
                '  System.out.println(i);\n'
                '}\n',
              ),

              _buildContent(
                context,
                'What is the Continue Statement?',
                'The `continue` statement is used to skip the current iteration of a loop and proceed with the next iteration. It is commonly used when a certain condition needs to be skipped in the loop but the loop should continue running for other iterations.',
              ),
              _buildContent(
                context,
                'Syntax of Continue Statement',
                'The syntax of the `continue` statement is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 10; i++) {\n'
                '  if (i == 5) {\n'
                '    continue;\n'
                '  }\n'
                '  System.out.println(i);\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Example of Continue Statement',
                'Here is an example of using the `continue` statement to skip the iteration when `i` is equal to 5:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 10; i++) {\n'
                '  if (i == 5) {\n'
                '    continue;\n'
                '  }\n'
                '  System.out.println(i);\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Break and Continue in Nested Loops',
                'The `break` and `continue` statements can also be used in nested loops. When used in nested loops, the `break` statement will exit from the innermost loop, while the `continue` statement will skip the current iteration of the innermost loop.',
              ),
              _buildContent(
                context,
                'Example of Break in Nested Loops',
                'Here is an example where the `break` statement exits the inner loop:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 3; i++) {\n'
                '  for (int j = 0; j < 3; j++) {\n'
                '    if (j == 1) {\n'
                '      break;\n'
                '    }\n'
                '    System.out.println("i: " + i + ", j: " + j);\n'
                '  }\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Example of Continue in Nested Loops',
                'Here is an example where the `continue` statement skips the current iteration of the inner loop:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'for (int i = 0; i < 3; i++) {\n'
                '  for (int j = 0; j < 3; j++) {\n'
                '    if (j == 1) {\n'
                '      continue;\n'
                '    }\n'
                '    System.out.println("i: " + i + ", j: " + j);\n'
                '  }\n'
                '}\n',
              ),

              _buildContent(
                context,
                'Summary',
                'The `break` and `continue` statements provide control over loop execution in Java. Use `break` to exit loops early and `continue` to skip specific iterations. In nested loops, they affect only the innermost loop they are placed in.',
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
