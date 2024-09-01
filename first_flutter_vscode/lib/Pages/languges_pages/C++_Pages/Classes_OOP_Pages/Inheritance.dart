import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusInheritancePage());
}

class CplusplusInheritancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Inheritance',
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
                'Inheritance in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Inheritance?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Inheritance is a feature in C++ that allows a class to inherit properties and behavior (methods) from another class. The class that inherits is called the derived class, and the class being inherited from is called the base class.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Basic Inheritance',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In basic inheritance, a derived class inherits from a base class. The derived class can access the public and protected members of the base class.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Base {
  public:
    void display() {
      cout << "Base class display function" << endl;
    }
};

class Derived : public Base {
  public:
    void show() {
      cout << "Derived class show function" << endl;
    }
};

int main() {
  Derived obj;
  obj.display(); // Function from base class
  obj.show();    // Function from derived class
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Multilevel Inheritance',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In multilevel inheritance, a class is derived from another derived class. This creates a chain of inheritance.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Base {
  public:
    void display() {
      cout << "Base class display function" << endl;
    }
};

class Intermediate : public Base {
  public:
    void show() {
      cout << "Intermediate class show function" << endl;
    }
};

class Derived : public Intermediate {
  public:
    void print() {
      cout << "Derived class print function" << endl;
    }
};

int main() {
  Derived obj;
  obj.display(); // Function from base class
  obj.show();    // Function from intermediate class
  obj.print();   // Function from derived class
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Multiple Inheritance',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In multiple inheritance, a class is derived from more than one base class. C++ allows multiple inheritance, but it can lead to complexities.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Base1 {
  public:
    void display() {
      cout << "Base1 display function" << endl;
    }
};

class Base2 {
  public:
    void show() {
      cout << "Base2 show function" << endl;
    }
};

class Derived : public Base1, public Base2 {
  public:
    void print() {
      cout << "Derived class print function" << endl;
    }
};

int main() {
  Derived obj;
  obj.display(); // Function from Base1
  obj.show();    // Function from Base2
  obj.print();   // Function from Derived class
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
                'Access specifiers determine the visibility of base class members in derived classes. The three access specifiers are public, protected, and private.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Text(
                'Example:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              CodeBlock(
                code: '''
#include <iostream>
using namespace std;

class Base {
  public:
    int publicVar;
  protected:
    int protectedVar;
  private:
    int privateVar;
};

class Derived : public Base {
  public:
    void access() {
      publicVar = 10; // Accessible
      protectedVar = 20; // Accessible
      // privateVar = 30; // Not Accessible
    }
};

int main() {
  Derived obj;
  obj.publicVar = 10; // Accessible
  // obj.protectedVar = 20; // Not Accessible
  // obj.privateVar = 30; // Not Accessible
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
