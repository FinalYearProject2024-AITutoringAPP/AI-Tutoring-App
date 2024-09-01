import 'package:flutter/material.dart';

class CplusplusScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Scope',
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
                'Scope in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Scope?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In C++, the scope of a variable refers to the region in which it is defined and accessible. Variables can have global or local scope, and their accessibility is determined by where they are declared.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Global Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared outside of all functions, including `main()`, have global scope. These variables are accessible from any function within the same file or in other files if declared as `extern`.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int globalVar = 10;\n\n'
                  'void display() {\n'
                  '    cout << "Global variable: " << globalVar << endl;\n'
                  '}\n\n'
                  'int main() {\n'
                  '    display();\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Local Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared inside a function or a block are said to have local scope. These variables can only be accessed within the function or block where they are declared.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'void display() {\n'
                  '    int localVar = 20;\n'
                  '    cout << "Local variable: " << localVar << endl;\n'
                  '}\n\n'
                  'int main() {\n'
                  '    display();\n'
                  '    // cout << localVar; // Error: localVar is not accessible here\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Block Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variables declared inside a block (delimited by `{}`) are only accessible within that block. This is also known as block scope.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int main() {\n'
                  '    if (true) {\n'
                  '        int blockVar = 30;\n'
                  '        cout << "Block variable: " << blockVar << endl;\n'
                  '    }\n'
                  '    // cout << blockVar; // Error: blockVar is not accessible here\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Namespace Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Namespaces allow you to group named entities like classes, objects, and functions under a name. This helps to avoid naming conflicts and provides scope to the variables and functions within the namespace.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'namespace MyNamespace {\n'
                  '    int nsVar = 40;\n'
                  '    void display() {\n'
                  '        cout << "Namespace variable: " << nsVar << endl;\n'
                  '    }\n'
                  '}\n\n'
                  'int main() {\n'
                  '    MyNamespace::display();\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Variable Shadowing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Variable shadowing occurs when a local variable has the same name as a global variable. In this case, the local variable overshadows the global variable within its scope.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int globalVar = 50;\n\n'
                  'void display() {\n'
                  '    int globalVar = 60;\n'
                  '    cout << "Local variable: " << globalVar << endl;\n'
                  '}\n\n'
                  'int main() {\n'
                  '    display();\n'
                  '    cout << "Global variable: " << globalVar << endl;\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
