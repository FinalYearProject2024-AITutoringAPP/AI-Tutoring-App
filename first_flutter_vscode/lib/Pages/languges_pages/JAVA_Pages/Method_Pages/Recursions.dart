import 'package:flutter/material.dart';

void main() {
  runApp(JavaMethodRecursionPage());
}

class JavaMethodRecursionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Recursion',
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
                'Java Recursion',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Recursion is a process in which a method calls itself as a subroutine. This means that the method will repeat itself multiple times, as it can call itself during its execution. Recursion is used to solve problems that can be broken down into smaller, similar problems.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                '### How Recursion Works',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A recursive method must have a base case that terminates the recursion. Without a base case, the recursion will continue indefinitely, leading to a stack overflow error.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    // Method to calculate factorial of a number
    int factorial(int n) {
        if (n == 0) {
            return 1; // Base case
        } else {
            return n * factorial(n - 1); // Recursive call
        }
    }

    public static void main(String[] args) {
        Main obj = new Main();
        int result = obj.factorial(5);
        System.out.println("Factorial of 5 is: " + result);
    }
}
''',
              ),
              SizedBox(height: 20.0),

              Text(
                '### Example Explained',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In the above example, the `factorial` method calculates the factorial of a number using recursion. The method multiplies the number `n` with the factorial of `n - 1` until `n` is 0. The base case of the recursion is when `n` equals 0, which stops the recursion by returning 1.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                '### Benefits of Recursion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Recursion can simplify the implementation of complex algorithms and can make the code more readable. Problems that are naturally hierarchical, such as tree traversal or generating combinations, are often easier to solve using recursion.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              Text(
                '### Drawbacks of Recursion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Recursion can lead to high memory consumption due to the stack space required for each recursive call. For problems with large inputs, an iterative approach might be more efficient to avoid stack overflow errors.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
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
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'Courier',
            color: Colors.green[400],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
