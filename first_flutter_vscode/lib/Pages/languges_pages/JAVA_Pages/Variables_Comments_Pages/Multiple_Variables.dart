import 'package:flutter/material.dart';

void main() {
  runApp(JAVAMultipleVariablesPage());
}

class JAVAMultipleVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Multiple Variables',
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
                'Java Multiple Variables',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildContent(
                context,
                'Declaring Multiple Variables',
                'In Java, you can declare multiple variables of the same type in a single statement. Each variable should be separated by a comma.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    int a = 10, b = 20, c = 30;\n'
                '    System.out.println("a: " + a);\n'
                '    System.out.println("b: " + b);\n'
                '    System.out.println("c: " + c);\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Explanation:',
                'In the example above, we declared three integer variables `a`, `b`, and `c` in a single line and initialized them with values.',
              ),
              SizedBox(height: 20.0),
              _buildContent(
                context,
                'Declaring Different Types',
                'You can also declare multiple variables of different types, but you need to do it in separate statements.',
              ),
              _buildCodeSnippet(
                context,
                'Example:',
                'public class Main {\n'
                '  public static void main(String[] args) {\n'
                '    int x = 10;\n'
                '    double y = 20.5;\n'
                '    String z = "Hello";\n'
                '    System.out.println("x: " + x);\n'
                '    System.out.println("y: " + y);\n'
                '    System.out.println("z: " + z);\n'
                '  }\n'
                '}',
              ),
              _buildContent(
                context,
                'Explanation:',
                'In this example, we declared three variables of different types: an integer, a double, and a string. Each variable is declared in its own statement.',
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
