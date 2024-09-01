import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusConstructorsPage());
}

class CplusplusConstructorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Constructors',
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
                'Constructors in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is a Constructor?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A constructor is a special member function of a class that is automatically called when an object of the class is created. It initializes the object’s properties.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Default Constructor',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A default constructor is a constructor that takes no arguments. If no constructors are defined, the compiler provides a default constructor.',
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
    MyClass() {
      cout << "Constructor called!" << endl;
    }
};

int main() {
  MyClass obj; // Calls the default constructor
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Parameterized Constructor',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A parameterized constructor is a constructor that takes arguments. It allows you to initialize an object with specific values.',
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
    int value;
    MyClass(int v) {
      value = v;
      cout << "Constructor called with value: " << value << endl;
    }
};

int main() {
  MyClass obj(10); // Calls the parameterized constructor
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Copy Constructor',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A copy constructor is a constructor that initializes a new object as a copy of an existing object. It is called when a new object is created from an existing object.',
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
    int value;
    MyClass(int v) : value(v) {}
    
    // Copy constructor
    MyClass(const MyClass &obj) {
      value = obj.value;
      cout << "Copy constructor called!" << endl;
    }
};

int main() {
  MyClass obj1(10); // Calls the parameterized constructor
  MyClass obj2 = obj1; // Calls the copy constructor
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Destructors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A destructor is a special member function of a class that is called when an object of the class is destroyed. It is used to release resources allocated by the object.',
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
    MyClass() {
      cout << "Constructor called!" << endl;
    }
    
    ~MyClass() {
      cout << "Destructor called!" << endl;
    }
};

int main() {
  MyClass obj; // Calls the constructor and destructor
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
