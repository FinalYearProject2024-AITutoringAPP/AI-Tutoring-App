import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingCreateVariablesPage());
}

class CProgrammingCreateVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming Variables',
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
                'C Variables',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What Are Variables?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C programming, a variable is a container for storing data values. Each variable in C has a type that determines what kind of data it can hold. Variables must be declared before they are used.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Variable Declaration',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To declare a variable in C, you need to specify the type of the variable and then provide a name for it. The syntax is as follows:\n\n'
                '```c\n'
                'type variable_name;\n'
                '```\n'
                'For example:\n\n'
                '```c\n'
                'int age;\n'
                'float salary;\n'
                'char grade;\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Initializing Variables',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables can be initialized (i.e., assigned a value) at the time of declaration. For example:\n\n'
                '```c\n'
                'int age = 30;\n'
                'float salary = 4500.50;\n'
                'char grade = \'A\';\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
#include <stdio.h>

int main() {
    int age = 30;
    float salary = 4500.50;
    char grade = 'A';

    printf("Age: %d\\n", age);
    printf("Salary: %.2f\\n", salary);
    printf("Grade: %c\\n", grade);

    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Variable Types',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'C supports several types of variables, including:\n'
                '- `int` for integer values\n'
                '- `float` for floating-point numbers\n'
                '- `double` for double-precision floating-point numbers\n'
                '- `char` for characters\n\n'
                'Each type has a specific size and range, which is defined by the C standard.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example of Different Variable Types:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''
#include <stdio.h>

int main() {
    int number = 100;
    float decimal = 10.5;
    double largeDecimal = 123456.789;
    char letter = 'B';

    printf("Integer: %d\\n", number);
    printf("Float: %.2f\\n", decimal);
    printf("Double: %.3f\\n", largeDecimal);
    printf("Character: %c\\n", letter);

    return 0;
}
                  ''',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreenAccent, fontFamily: 'Courier'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
