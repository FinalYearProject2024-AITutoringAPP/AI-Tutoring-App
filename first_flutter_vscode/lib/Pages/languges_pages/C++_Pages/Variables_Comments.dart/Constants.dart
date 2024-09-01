import 'package:flutter/material.dart';

void main() {
  runApp(CPlusPlusConstantsPage());
}

class CPlusPlusConstantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Constants',
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
                'C++ Constants',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'Constants are variables whose values cannot be changed after initialization. They provide a way to define values that will be used repeatedly in a program without risk of modification.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Defining Constants
              Text(
                'Defining Constants:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nIn C++, constants can be defined using the `const` keyword or the `constexpr` keyword.

1. **Using `const`:**
\nTo declare a constant using `const`, you specify the `const` keyword followed by the data type, name, and value.
Example:
\nconst int MAX_VALUE = 100;
const double PI = 3.14159;

2. **Using `constexpr`:**
\n`constexpr` is used to declare constants that can be evaluated at compile-time. It is particularly useful for defining constants that are used in constant expressions.
Example:
\nconstexpr int MIN_VALUE = 1;
constexpr double E = 2.71828;
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Examples
              Text(
                'Examples of Constants:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n**Example 1: Using `const`**

#include <iostream>
using namespace std;

int main() {
    const int MAX_SCORE = 100;
    cout << "Maximum Score: " << MAX_SCORE << endl;
    return 0;
}

**Example 2: Using `constexpr`**

#include <iostream>
using namespace std;

constexpr double GRAVITY = 9.81;

int main() {
    cout << "Gravity: " << GRAVITY << " m/s^2" << endl;
    return 0;
}
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Benefits of Constants
              Text(
                'Benefits of Using Constants:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n1. **Readability:** Constants provide meaningful names to values, making the code more readable and understandable.
2. **Maintainability:** If a constant value needs to change, it can be updated in one place rather than throughout the codebase.
3. **Safety:** Using constants prevents accidental modification of values that should remain unchanged.
4. **Optimization:** The compiler can optimize code more effectively when using constants because their values are known at compile-time.
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
