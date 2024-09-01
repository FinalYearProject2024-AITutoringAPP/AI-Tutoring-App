import 'package:flutter/material.dart';

void main() {
  runApp(JavaMethodOverloadingPage());
}

class JavaMethodOverloadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Method Overloading',
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
                'Java Method Overloading',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Method overloading allows a class to have more than one method with the same name, if their parameter lists are different. This feature enables methods to perform similar but slightly varied tasks. Overloaded methods must differ in the number or type of their parameters.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                '### Example of Method Overloading',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In this example, the `add` method is overloaded with different parameter lists:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    // Method to add two integers
    static int add(int a, int b) {
        return a + b;
    }

    // Overloaded method to add three integers
    static int add(int a, int b, int c) {
        return a + b + c;
    }

    // Overloaded method to add two double values
    static double add(double a, double b) {
        return a + b;
    }

    public static void main(String[] args) {
        System.out.println("Sum of 10 and 20: " + add(10, 20));
        System.out.println("Sum of 10, 20, and 30: " + add(10, 20, 30));
        System.out.println("Sum of 10.5 and 20.5: " + add(10.5, 20.5));
    }
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                '### Rules for Method Overloading',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To overload methods, follow these rules:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildBulletPoint('1. Methods must have the same name but different parameters (number, type, or both).'),
              _buildBulletPoint('2. Overloaded methods cannot differ only by return type.'),
              _buildBulletPoint('3. Method overloading is determined at compile-time, based on the method signature.'),
              SizedBox(height: 20.0),

              Text(
                '### Constructor Overloading',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constructor overloading follows similar rules as method overloading. Multiple constructors can be defined with different parameter lists to initialize an object in various ways.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    int a, b;

    // Constructor with two parameters
    Main(int x, int y) {
        a = x;
        b = y;
    }

    // Overloaded constructor with one parameter
    Main(int x) {
        a = x;
        b = 0;
    }

    public static void main(String[] args) {
        Main obj1 = new Main(10, 20);
        System.out.println("a: " + obj1.a + ", b: " + obj1.b);

        Main obj2 = new Main(10);
        System.out.println("a: " + obj2.a + ", b: " + obj2.b);
    }
}
''',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'Courier',
            color: Colors.green[400],
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.circle, size: 8, color: Colors.white70),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(text, style: TextStyle(fontSize: 16, color: Colors.white70)),
        ),
      ],
    );
  }
}
