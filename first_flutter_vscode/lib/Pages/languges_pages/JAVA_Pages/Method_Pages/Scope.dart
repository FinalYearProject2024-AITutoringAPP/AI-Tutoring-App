import 'package:flutter/material.dart';

void main() {
  runApp(JavaMethodScopePage());
}

class JavaMethodScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Method Scope',
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
                'Java Method Scope',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'In Java, the scope of a variable refers to where in the code the variable can be accessed. The scope of variables can be categorized into three main types: local variables, instance variables, and class variables.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                '### Local Variables',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Local variables are declared inside methods or blocks of code. They can only be accessed within the method or block in which they are declared. They are created when the method or block is entered and destroyed when the method or block is exited.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    void myMethod() {
        int x = 10; // Local variable
        System.out.println(x);
    }

    public static void main(String[] args) {
        Main obj = new Main();
        obj.myMethod();
    }
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                '### Instance Variables',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Instance variables are declared inside a class but outside any method. They are specific to each instance of the class and can be accessed by all methods within the class. They are created when an instance of the class is created and destroyed when the instance is destroyed.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    int x = 10; // Instance variable

    void myMethod() {
        System.out.println(x);
    }

    public static void main(String[] args) {
        Main obj = new Main();
        obj.myMethod();
    }
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                '### Class Variables',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Class variables are declared using the `static` keyword within a class but outside any method. They are shared among all instances of the class and can be accessed directly by the class name or through an instance of the class.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    static int x = 10; // Class variable

    void myMethod() {
        System.out.println(x);
    }

    public static void main(String[] args) {
        Main obj1 = new Main();
        Main obj2 = new Main();
        obj1.myMethod();
        obj2.myMethod();
    }
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                '### Summary',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The scope of a variable in Java determines where it can be accessed in the code. Understanding the scope is crucial for managing variable visibility and ensuring correct program behavior.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
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
}
