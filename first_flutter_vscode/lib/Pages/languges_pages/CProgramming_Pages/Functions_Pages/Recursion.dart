import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingRecursionsPage());
}

class CProgrammingRecursionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Recursion',
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
                'C Recursion',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Recursion is a technique in which a function calls itself in order to solve a problem. It is commonly used to solve problems that can be broken down into smaller, similar problems.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '### How Recursion Works',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A recursive function generally has two parts:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '- **Base Case:** A condition under which the function stops calling itself to prevent infinite recursion.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '- **Recursive Case:** The part of the function that includes the recursive call.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                '### Example of Recursion: Factorial',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The factorial of a number `n` (written as `n!`) is the product of all positive integers less than or equal to `n`. The factorial function can be defined recursively as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
int factorial(int n) {
    if (n <= 1) {
        return 1; // Base case
    } else {
        return n * factorial(n - 1); // Recursive case
    }
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Example of Recursion: Fibonacci Sequence',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones. It can be defined recursively as follows:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock('''
int fibonacci(int n) {
    if (n <= 1) {
        return n; // Base case
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2); // Recursive case
    }
}
              '''),
              SizedBox(height: 20.0),
              Text(
                '### Advantages and Disadvantages of Recursion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '#### Advantages:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '- **Simpler Code:** Recursive solutions are often more straightforward and easier to understand.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '#### Disadvantages:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '- **Performance Overhead:** Recursive functions can be slower and use more memory than iterative solutions due to the overhead of multiple function calls.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '- **Stack Overflow Risk:** Deep recursion can lead to stack overflow errors if the recursion depth is too large.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier New', fontSize: 16, color: Colors.white),
      ),
    );
  }
}
