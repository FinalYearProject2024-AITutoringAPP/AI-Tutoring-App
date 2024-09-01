import 'package:flutter/material.dart';

void main() {
  runApp(PHPLoopPage());
}

class PHPLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Loops',
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
                'PHP Looping Overview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'Loops are used to execute a block of code repeatedly until a specified condition is met. PHP supports several types of loops: while, do while, for, and foreach.',
              ),

              // While Loop
              _buildSectionTitle('While Loop'),
              _buildSectionContent(
                'The while loop will execute a block of code as long as the specified condition is true.',
              ),
              _buildCodeSnippet(
                '''
\$i = 1;
while (\$i <= 5) {
    echo "The number is: \$i<br>";
    \$i++;
}
''',
              ),
              _buildSectionContent(
                'The above code snippet will output the numbers 1 through 5.',
              ),

              // Do While Loop
              _buildSectionTitle('Do While Loop'),
              _buildSectionContent(
                'The do while loop is similar to the while loop, but it ensures that the block of code is executed at least once before checking the condition.',
              ),
              _buildCodeSnippet(
                '''
\$i = 1;
do {
    echo "The number is: \$i<br>";
    \$i++;
} while (\$i <= 5);
''',
              ),
              _buildSectionContent(
                'This loop will also output the numbers 1 through 5.',
              ),

              // For Loop
              _buildSectionTitle('For Loop'),
              _buildSectionContent(
                'The for loop is used when the number of iterations is known beforehand. It includes an initialization, a condition, and an increment/decrement statement.',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 5; \$i++) {
    echo "The number is: \$i<br>";
}
''',
              ),
              _buildSectionContent(
                'This code snippet will output the numbers 1 through 5, just like the previous examples.',
              ),

              // Foreach Loop
              _buildSectionTitle('Foreach Loop'),
              _buildSectionContent(
                'The foreach loop is specifically used for iterating over arrays. It iterates through each element in the array.',
              ),
              _buildCodeSnippet(
                '''
\$colors = array("red", "green", "blue");
foreach (\$colors as \$value) {
    echo "\$value<br>";
}
''',
              ),
              _buildSectionContent(
                'This will output "red", "green", and "blue".',
              ),

              // Break and Continue
              _buildSectionTitle('Break and Continue'),
              _buildSectionContent(
                'The break statement can be used to exit from a loop early, while the continue statement can be used to skip the current iteration and move to the next one.',
              ),
              _buildCodeSnippet(
                '''
// Break example
for (\$i = 1; \$i <= 10; \$i++) {
    if (\$i == 5) {
        break;
    }
    echo "The number is: \$i<br>";
}

// Continue example
for (\$i = 1; \$i <= 10; \$i++) {
    if (\$i == 5) {
        continue;
    }
    echo "The number is: \$i<br>";
}
''',
              ),
              _buildSectionContent(
                'The break example will output numbers 1 through 4. The continue example will output numbers 1 through 10, except for 5.',
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
