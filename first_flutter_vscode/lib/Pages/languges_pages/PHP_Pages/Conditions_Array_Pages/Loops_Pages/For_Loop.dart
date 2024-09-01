import 'package:flutter/material.dart';

void main() {
  runApp(PHPForLoopPage());
}

class PHPForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP For Loop',
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
                'PHP For Loop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The for loop is used when you know in advance how many times you want to execute a statement or a block of statements. The for loop provides a concise way of writing the loop structure.',
              ),

              // Syntax
              _buildSectionTitle('Syntax'),
              _buildSectionContent(
                'The syntax of a for loop in PHP is as follows:',
              ),
              _buildCodeSnippet(
                '''
for (initialization; condition; increment/decrement) {
    // code to be executed
}
''',
              ),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of a PHP for loop that prints numbers 1 through 5:',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 5; \$i++) {
    echo "The number is: \$i<br>";
}
''',
              ),
              _buildSectionContent(
                'In this example, the loop will print "The number is: 1" through "The number is: 5". The initialization sets \$i to 1, the condition checks if \$i is less than or equal to 5, and the increment increases \$i by 1 each time the loop iterates.',
              ),

              // Nested For Loops
              _buildSectionTitle('Nested For Loops'),
              _buildSectionContent(
                'A for loop can be nested inside another for loop. Here is an example of a nested for loop that prints a multiplication table:',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 3; \$i++) {
    for (\$j = 1; \$j <= 3; \$j++) {
        echo "\$i * \$j = " . (\$i * \$j) . "<br>";
    }
    echo "<br>";
}
''',
              ),
              _buildSectionContent(
                'In this example, the outer loop runs 3 times and the inner loop also runs 3 times for each iteration of the outer loop. This results in a 3x3 multiplication table.',
              ),

              // Notes
              _buildSectionTitle('Notes'),
              _buildSectionContent(
                'The for loop is particularly useful when you know in advance how many times you need to iterate over a block of code. It is also commonly used for iterating over arrays and collections.',
              ),

              // Related Topics
              _buildSectionTitle('Related Topics'),
              _buildSectionContent(
                'For more information on loops, you may also want to check out: while loop, do...while loop, foreach loop, break, and continue statements.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, color: Colors.white70),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier', color: Colors.white),
      ),
    );
  }
}
