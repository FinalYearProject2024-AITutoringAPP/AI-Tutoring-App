import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusClassMethodsPage());
}

class CplusplusClassMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Class Methods',
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
                'Class Methods in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What are Class Methods?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Class methods are functions defined inside a class that operate on instances of that class. They have access to the class’s data members and can modify them.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Defining a Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To define a method in a class, you write the method’s declaration inside the class definition and provide its implementation outside the class using the scope resolution operator `::`.',
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
    void myMethod(); // Method declaration
};

// Method implementation
void MyClass::myMethod() {
  cout << "This is a class method!" << endl;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Calling a Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'To call a method, you use the object of the class followed by the dot operator and the method name.',
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
  obj.myMethod(); // Calling the method
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Method Overloading',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Method overloading allows you to have multiple methods in a class with the same name but different parameters. The correct method is chosen based on the number or types of arguments passed.',
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
    void myMethod() {
      cout << "No parameters" << endl;
    }

    void myMethod(int num) {
      cout << "Number: " << num << endl;
    }

    void myMethod(double num) {
      cout << "Double: " << num << endl;
    }
};

int main() {
  MyClass obj;
  obj.myMethod(); // Calls the method with no parameters
  obj.myMethod(10); // Calls the method with an integer parameter
  obj.myMethod(10.5); // Calls the method with a double parameter
  return 0;
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                'Const Methods',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A const method is a member function that does not modify any data members of the class. It can be called on const objects.',
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
    void myMethod() const {
      cout << "This is a const method!" << endl;
    }
};

int main() {
  const MyClass obj;
  obj.myMethod(); // Calling the const method
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
