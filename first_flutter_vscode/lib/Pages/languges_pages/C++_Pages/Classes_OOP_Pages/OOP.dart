import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusOOPsPage());
}

class CplusplusOOPsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Object-Oriented Programming',
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
                'Object-Oriented Programming in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'C++ OOP Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'C++ is an object-oriented programming language that allows you to create and manipulate objects. The key concepts of OOP include classes and objects, encapsulation, inheritance, and polymorphism.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Classes and Objects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A class is a blueprint for creating objects. It defines a datatype by bundling data and methods that work on the data into one single unit. Objects are instances of classes.',
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
class Car {
  public:
    string brand;
    string model;
    int year;

    void display() {
      cout << brand << " " << model << " " << year << endl;
    }
};

int main() {
  Car myCar;
  myCar.brand = "Toyota";
  myCar.model = "Corolla";
  myCar.year = 2021;
  myCar.display();
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Encapsulation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Encapsulation is the concept of wrapping data and methods into a single unit, known as a class. It hides the internal state of the object from the outside world and only exposes a controlled interface.',
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
class EncapsulatedCar {
  private:
    string brand;
    string model;

  public:
    void setBrand(string b) {
      brand = b;
    }

    string getBrand() {
      return brand;
    }

    void setModel(string m) {
      model = m;
    }

    string getModel() {
      return model;
    }
};

int main() {
  EncapsulatedCar myCar;
  myCar.setBrand("Honda");
  myCar.setModel("Civic");
  cout << myCar.getBrand() << " " << myCar.getModel() << endl;
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Inheritance',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Inheritance is a mechanism where a new class is derived from an existing class. It allows the derived class to inherit attributes and methods from the base class, promoting code reusability.',
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
class Vehicle {
  public:
    string brand;

    void honk() {
      cout << "Beep Beep!" << endl;
    }
};

class Car : public Vehicle {
  public:
    string model;

    void display() {
      cout << brand << " " << model << endl;
    }
};

int main() {
  Car myCar;
  myCar.brand = "Ford";
  myCar.model = "Mustang";
  myCar.display();
  myCar.honk();
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Polymorphism',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Polymorphism allows functions to have the same name but behave differently based on the object invoking them. It can be achieved through function overloading and function overriding.',
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
class Base {
  public:
    virtual void print() {
      cout << "Base class" << endl;
    }
};

class Derived : public Base {
  public:
    void print() override {
      cout << "Derived class" << endl;
    }
};

int main() {
  Base* b;
  Derived d;
  b = &d;
  b->print(); // Calls Derived's print
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
