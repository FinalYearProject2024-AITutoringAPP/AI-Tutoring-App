import 'package:flutter/material.dart';

void main() {
  runApp(JAVASwitchPage());
}

class JAVASwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Switch Statement',
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
                'Switch Statement in Java',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Switch Statement?',
                'The `switch` statement allows a variable to be tested for equality against a list of values. Each value is called a case, and the variable being switched on is checked for each case.',
              ),
              
              _buildContent(
                context,
                'Syntax',
                'The basic syntax of a `switch` statement is as follows:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'switch (expression) {\n'
                '  case value1:\n'
                '    // code block\n'
                '    break;\n'
                '  case value2:\n'
                '    // code block\n'
                '    break;\n'
                '  default:\n'
                '    // code block\n'
                '}', 
              ),

              _buildContent(
                context,
                'Switch Statement Example',
                'Here is an example of a `switch` statement that checks the value of a variable and executes the corresponding case:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'int day = 3;\n'
                'switch (day) {\n'
                '  case 1:\n'
                '    System.out.println("Monday");\n'
                '    break;\n'
                '  case 2:\n'
                '    System.out.println("Tuesday");\n'
                '    break;\n'
                '  case 3:\n'
                '    System.out.println("Wednesday");\n'
                '    break;\n'
                '  case 4:\n'
                '    System.out.println("Thursday");\n'
                '    break;\n'
                '  case 5:\n'
                '    System.out.println("Friday");\n'
                '    break;\n'
                '  case 6:\n'
                '    System.out.println("Saturday");\n'
                '    break;\n'
                '  case 7:\n'
                '    System.out.println("Sunday");\n'
                '    break;\n'
                '  default:\n'
                '    System.out.println("Invalid day");\n'
                '}', 
              ),

              _buildContent(
                context,
                'Switch Statement with Strings',
                'Starting with Java 7, you can use `switch` statements with strings. Here’s an example:',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'String day = "Wednesday";\n'
                'switch (day) {\n'
                '  case "Monday":\n'
                '    System.out.println("First day");\n'
                '    break;\n'
                '  case "Wednesday":\n'
                '    System.out.println("Mid week");\n'
                '    break;\n'
                '  case "Friday":\n'
                '    System.out.println("Last working day");\n'
                '    break;\n'
                '  default:\n'
                '    System.out.println("Invalid day");\n'
                '}', 
              ),

              _buildContent(
                context,
                'Important Points',
                'Here are some important points to remember about `switch` statements in Java:',
              ),
              _buildBulletPoint(
                context,
                '1. The `break` statement is used to exit the switch block. Without it, the execution will continue to the next case (fall-through).',
              ),
              _buildBulletPoint(
                context,
                '2. The `default` case is optional but recommended. It is executed if no matching case is found.',
              ),
              _buildBulletPoint(
                context,
                '3. Switch statements can be used with `byte`, `short`, `char`, and `int` data types as well as `String`.',
              ),
              
              _buildContent(
                context,
                'Summary',
                'The `switch` statement provides a way to execute code based on the value of a variable. It simplifies complex conditional statements and improves code readability.',
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
