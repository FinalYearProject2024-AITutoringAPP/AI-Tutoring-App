import 'package:flutter/material.dart';

void main() {
  runApp(CPlusPlusIdentifiersPage());
}

class CPlusPlusIdentifiersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Identifiers',
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
                'C++ Identifiers',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'Identifiers are names used to identify variables, functions, arrays, or any other user-defined item. In C++, there are some rules and conventions for naming identifiers.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Rules for Identifiers
              Text(
                'Rules for Identifiers:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n1. Identifiers must begin with a letter (a-z, A-Z) or an underscore (_).
2. The remaining characters can be letters, digits (0-9), or underscores.
3. Identifiers cannot be keywords (reserved words) in C++.
4. Identifiers are case-sensitive (e.g., `variable`, `Variable`, and `VARIABLE` are different).
5. Identifiers cannot contain spaces or special characters (e.g., `@`, `#`, `-`).

Examples:
\nint myVariable;
float _temperature;
char letterA;
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Examples
              Text(
                'Examples of Valid Identifiers:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nint number;
double _value;
char letter;
std::string name;
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Examples of Invalid Identifiers
              Text(
                'Examples of Invalid Identifiers:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nint 1stNumber;    // Cannot start with a digit
double #value;      // Special character is not allowed
char my-variable;   // Hyphen is not allowed
std::int class;     // Cannot use reserved keywords
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Best Practices
              Text(
                'Best Practices for Naming Identifiers:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n1. Choose meaningful names that convey the purpose of the variable or function.
2. Use camelCase or underscores to separate words for readability (e.g., `totalAmount`, `total_amount`).
3. Avoid using single-letter names except for loop variables (e.g., `i`, `j`).
4. Maintain consistency in naming conventions throughout your code.
''',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
