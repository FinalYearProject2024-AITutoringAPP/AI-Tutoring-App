import 'package:flutter/material.dart';

void main() {
  runApp(JAVANumbersPage());
}

class JAVANumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Numbers',
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
                'Java Numbers',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'Number Types in Java',
                'Java supports several types of numbers, each of which serves different needs. The main types are integers and floating-point numbers.',
              ),
              _buildContent(
                context,
                'Integer Types',
                'Java has four types of integers, each with a different size and range:',
              ),
              _buildBulletPoint(
                context,
                '1. byte: 8-bit integer, range from -128 to 127',
              ),
              _buildBulletPoint(
                context,
                '2. short: 16-bit integer, range from -32,768 to 32,767',
              ),
              _buildBulletPoint(
                context,
                '3. int: 32-bit integer, range from -2,147,483,648 to 2,147,483,647',
              ),
              _buildBulletPoint(
                context,
                '4. long: 64-bit integer, range from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807',
              ),
              _buildContent(
                context,
                'Floating-Point Types',
                'Java has two types of floating-point numbers for decimal values:',
              ),
              _buildBulletPoint(
                context,
                '1. float: 32-bit floating-point number, with approximately 6-7 decimal digits of precision',
              ),
              _buildBulletPoint(
                context,
                '2. double: 64-bit floating-point number, with approximately 15-16 decimal digits of precision',
              ),
              _buildContent(
                context,
                'Example Usage of Number Types:',
                'Here are examples of how to use different number types in Java:',
              ),
              _buildCodeSnippet(
                context,
                'Example Code:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        byte b = 100;\n'
                '        short s = 10000;\n'
                '        int i = 100000;\n'
                '        long l = 100000L;\n'
                '        float f = 5.75f;\n'
                '        double d = 19.99;\n'
                '        System.out.println("Byte: " + b);\n'
                '        System.out.println("Short: " + s);\n'
                '        System.out.println("Int: " + i);\n'
                '        System.out.println("Long: " + l);\n'
                '        System.out.println("Float: " + f);\n'
                '        System.out.println("Double: " + d);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Java provides several number types for various needs. Use integer types for whole numbers and floating-point types for decimal numbers. Choose the type based on the precision and range required by your application.',
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
