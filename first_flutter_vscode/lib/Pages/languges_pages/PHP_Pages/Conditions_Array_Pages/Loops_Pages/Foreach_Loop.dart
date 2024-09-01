import 'package:flutter/material.dart';

void main() {
  runApp(PHPForeachLoopPage());
}

class PHPForeachLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Foreach Loop',
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
                'PHP Foreach Loop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The foreach loop is used to iterate over arrays in PHP. It simplifies the process of traversing arrays and allows you to access both the key and value of each element in the array.',
              ),

              // Syntax
              _buildSectionTitle('Syntax'),
              _buildSectionContent(
                'The syntax of the foreach loop is as follows:',
              ),
              _buildCodeSnippet(
                '''
// Syntax for iterating over an array
foreach (\$array as \$value) {
    // code to be executed
}

// Syntax for iterating over an associative array
foreach (\$array as \$key => \$value) {
    // code to be executed
}
''',
              ),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of using foreach with a numeric array:',
              ),
              _buildCodeSnippet(
                '''
\$colors = array("red", "green", "blue");

foreach (\$colors as \$color) {
    echo "\$color<br>";
}
''',
              ),
              _buildSectionContent(
                'In this example, foreach iterates over the \$colors array and prints each color. The output will be "red", "green", and "blue" on separate lines.',
              ),

              // Associative Array Example
              _buildSectionTitle('Associative Array Example'),
              _buildSectionContent(
                'Here is an example of using foreach with an associative array:',
              ),
              _buildCodeSnippet(
                '''
\$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);

foreach (\$ages as \$name => \$age) {
    echo "\$name is \$age years old<br>";
}
''',
              ),
              _buildSectionContent(
                'In this example, foreach iterates over the \$ages associative array and prints each name and age. The output will be "Peter is 35 years old", "Ben is 37 years old", and "Joe is 43 years old" on separate lines.',
              ),

              // Notes
              _buildSectionTitle('Notes'),
              _buildSectionContent(
                'The foreach loop is particularly useful for iterating over arrays, especially when you do not need to know the index of the current element. It works well with both indexed and associative arrays.',
              ),

              // Related Topics
              _buildSectionTitle('Related Topics'),
              _buildSectionContent(
                'For more information on loops, you may also want to check out: for loop, while loop, do...while loop, break, and continue statements.',
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
