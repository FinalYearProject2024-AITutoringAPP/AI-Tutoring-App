import 'package:flutter/material.dart';

class CplusplusRecursionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Recursion',
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
                'Recursion in C++',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'What is Recursion?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Recursion in C++ refers to the technique where a function calls itself in order to solve a problem. The function must have a base case to terminate the recursive calls and prevent infinite recursion.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example of Recursion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Here is a simple example of recursion using the factorial function. The factorial of a number `n` is the product of all positive integers less than or equal to `n`.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int factorial(int n) {\n'
                  '    if (n <= 1) {\n'
                  '        return 1;\n'
                  '    } else {\n'
                  '        return n * factorial(n - 1);\n'
                  '    }\n'
                  '}\n\n'
                  'int main() {\n'
                  '    int num = 5;\n'
                  '    cout << "Factorial of " << num << " is " << factorial(num) << endl;\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'How Recursion Works',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. **Base Case**: Every recursive function must have a base case that terminates the recursion. Without a base case, recursion will continue indefinitely.\n'
                '2. **Recursive Case**: This is the part of the function that involves calling the function itself with modified arguments.\n'
                '3. **Stack Memory**: Each recursive call creates a new frame on the call stack, storing local variables and the return address. The stack unwinds when the base case is reached.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example: Fibonacci Sequence',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The Fibonacci sequence is another classic example of recursion. Each number in the sequence is the sum of the two preceding ones, starting from 0 and 1.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey[800],
                child: Text(
                  'int fibonacci(int n) {\n'
                  '    if (n <= 1) {\n'
                  '        return n;\n'
                  '    } else {\n'
                  '        return fibonacci(n - 1) + fibonacci(n - 2);\n'
                  '    }\n'
                  '}\n\n'
                  'int main() {\n'
                  '    int num = 7;\n'
                  '    cout << "Fibonacci of " << num << " is " << fibonacci(num) << endl;\n'
                  '    return 0;\n'
                  '}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Common Issues with Recursion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. **Stack Overflow**: Too many recursive calls can exhaust the stack memory, leading to a stack overflow.\n'
                '2. **Performance**: Recursive functions can be less efficient than iterative solutions, especially if they involve multiple recursive calls.\n'
                '3. **Debugging**: Debugging recursive functions can be more challenging due to the complexity of function calls and the call stack.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
