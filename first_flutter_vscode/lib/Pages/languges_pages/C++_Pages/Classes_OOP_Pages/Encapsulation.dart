import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusEncapsulationPage());
}

class CplusplusEncapsulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Encapsulation',
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
                'Encapsulation in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Encapsulation?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Encapsulation is one of the four fundamental Object-Oriented Programming (OOP) concepts. It is the process of wrapping data and functions into a single unit, called a class. It helps in hiding the internal state of the object and only exposes the necessary functionalities.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Why Use Encapsulation?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Encapsulation helps to protect the integrity of the data and hide the internal implementation details from the outside. This makes the code more maintainable and less prone to errors.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example of Encapsulation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In the example below, the class `Person` encapsulates the data and provides public methods to access and modify the data. The data members are private, and only the public methods can access or modify them.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Person {
  private:
    string name;
    int age;

  public:
    // Setter methods
    void setName(string n) {
      name = n;
    }

    void setAge(int a) {
      if(a > 0) {
        age = a;
      }
    }

    // Getter methods
    string getName() {
      return name;
    }

    int getAge() {
      return age;
    }
};

int main() {
  Person p;
  p.setName("John");
  p.setAge(30);

  cout << "Name: " << p.getName() << endl;
  cout << "Age: " << p.getAge() << endl;

  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Access Specifiers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C++, access specifiers are used to set the visibility of class members. There are three types of access specifiers:',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. **Public**: Members declared as public are accessible from outside the class.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                '2. **Private**: Members declared as private are accessible only within the class itself.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                '3. **Protected**: Members declared as protected are accessible within the class and by derived classes.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example of Access Specifiers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In the example below, the `Person` class uses public and private access specifiers to manage access to its data members.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Person {
  private:
    string name;

  public:
    void setName(string n) {
      name = n;
    }

    string getName() {
      return name;
    }
};

int main() {
  Person p;
  p.setName("Alice");
  cout << "Name: " << p.getName() << endl;

  // Uncommenting the following line will cause a compile-time error
  // p.name = "Bob";

  return 0;
}
''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodeBlock extends StatelessWidget {
  final String code;

  CodeBlock({required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier', color: Colors.white),
      ),
    );
  }
}
