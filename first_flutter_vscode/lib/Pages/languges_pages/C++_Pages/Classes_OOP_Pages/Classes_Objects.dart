import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusClassesObjectsPage());
}

class CplusplusClassesObjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Classes and Objects',
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
                'Classes and Objects in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is a Class?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A class in C++ is a user-defined data type that contains variables and functions. The variables in a class are called data members, and the functions are called member functions. Classes allow you to group related data and functions into one unit.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Creating a Class',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To create a class, use the `class` keyword followed by the class name and a pair of curly braces. Inside the curly braces, you define the data members and member functions.',
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
class MyClass {
  public:
    int myNumber;
    string myString;

    void display() {
      cout << "Number: " << myNumber << endl;
      cout << "String: " << myString << endl;
    }
};
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Creating Objects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'An object is an instance of a class. You create an object by declaring a variable of the class type. After creating an object, you can access its members using the dot operator.',
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
int main() {
  MyClass obj;
  obj.myNumber = 10;
  obj.myString = "Hello, World!";
  obj.display();
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
                'In C++, access specifiers are used to set the visibility of class members. The three access specifiers are `public`, `private`, and `protected`. By default, members of a class are private.',
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
class MyClass {
  public:
    int publicVar;

  private:
    int privateVar;

  protected:
    int protectedVar;
};
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Constructors and Destructors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Constructors are special member functions that are automatically called when an object is created. They are used to initialize objects. Destructors are special member functions that are automatically called when an object is destroyed. They are used to clean up resources.',
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
class MyClass {
  public:
    MyClass() { // Constructor
      cout << "Constructor called!" << endl;
    }

    ~MyClass() { // Destructor
      cout << "Destructor called!" << endl;
    }
};

int main() {
  MyClass obj; // Constructor is called
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Member Functions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Member functions are functions that are defined inside a class. They can access the class’s data members and perform operations on them. Member functions can be defined inside the class or outside of it using the scope resolution operator `::`.',
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
class MyClass {
  public:
    int myNumber;

    void setNumber(int num) {
      myNumber = num;
    }

    int getNumber() {
      return myNumber;
    }
};

int main() {
  MyClass obj;
  obj.setNumber(25);
  cout << "Number: " << obj.getNumber() << endl;
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
