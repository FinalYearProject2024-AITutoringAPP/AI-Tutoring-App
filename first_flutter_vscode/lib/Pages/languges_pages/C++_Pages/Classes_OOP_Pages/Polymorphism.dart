import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusPolymorphismPage());
}

class CplusplusPolymorphismPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Polymorphism',
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
                'Polymorphism in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Polymorphism?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Polymorphism is a feature of C++ that allows functions or objects to be treated as instances of their base class rather than their actual class. It is a core concept in object-oriented programming (OOP). There are two types of polymorphism: compile-time and runtime.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Compile-Time Polymorphism',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Compile-time polymorphism is achieved through function overloading and operator overloading. Function overloading allows multiple functions with the same name but different parameters, while operator overloading allows you to define custom behavior for operators.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Function Overloading Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Print {
  public:
    void show(int i) {
      cout << "Integer: " << i << endl;
    }
    
    void show(double d) {
      cout << "Double: " << d << endl;
    }
    
    void show(string s) {
      cout << "String: " << s << endl;
    }
};

int main() {
  Print obj;
  obj.show(10);      // Calls show(int)
  obj.show(12.34);   // Calls show(double)
  obj.show("Hello"); // Calls show(string)
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Runtime Polymorphism',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Runtime polymorphism is achieved through inheritance and virtual functions. When a base class pointer points to a derived class object, the appropriate derived class method is called based on the actual object type, not the pointer type.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Virtual Function Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Base {
  public:
    virtual void display() {
      cout << "Display from Base class" << endl;
    }
};

class Derived : public Base {
  public:
    void display() override {
      cout << "Display from Derived class" << endl;
    }
};

int main() {
  Base *b;
  Derived d;
  b = &d;
  b->display(); // Calls Derived class display() function
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Operator Overloading',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Operator overloading allows you to define custom behavior for operators such as +, -, *, etc. This can make your classes more intuitive to use.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Operator Overloading Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Complex {
  private:
    float real;
    float imag;
    
  public:
    Complex() : real(0), imag(0) {}
    Complex(float r, float i) : real(r), imag(i) {}
    
    Complex operator + (const Complex& c) {
      return Complex(real + c.real, imag + c.imag);
    }
    
    void display() {
      cout << "Real: " << real << ", Imaginary: " << imag << endl;
    }
};

int main() {
  Complex c1(3.5, 2.5), c2(1.5, 4.5);
  Complex c3 = c1 + c2;
  c3.display(); // Output: Real: 5.0, Imaginary: 7.0
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
