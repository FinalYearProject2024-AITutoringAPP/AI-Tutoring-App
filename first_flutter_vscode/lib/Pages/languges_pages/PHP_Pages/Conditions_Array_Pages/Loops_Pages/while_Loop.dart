import 'package:flutter/material.dart';

void main() {
  runApp(PHPWhileLoopPage());
}

class PHPWhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP While Loop',
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
                'PHP While Loop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The while loop in PHP repeatedly executes a block of code as long as a specified condition is true.',
              ),

              // Syntax
              _buildSectionTitle('Syntax'),
              _buildSectionContent(
                'The syntax of a while loop in PHP is as follows:',
              ),
              _buildCodeSnippet(
                '''
while (condition) {
    // code to be executed
}
''',
              ),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of a PHP while loop that prints numbers 1 through 5:',
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
                'In this example, the loop will print "The number is: 1" through "The number is: 5". The variable \$i is initialized to 1, and the loop continues as long as \$i is less than or equal to 5. After each iteration, \$i is incremented by 1.',
              ),

              // Notes
              _buildSectionTitle('Notes'),
              _buildSectionContent(
                'Be careful to avoid creating an infinite loop. Ensure that the loop condition will eventually be false. For example, if the increment statement inside the loop is missing or incorrect, the loop may never terminate.',
              ),

              // Related Topics
              _buildSectionTitle('Related Topics'),
              _buildSectionContent(
                'For more information on loops, you may also want to check out: while loop, do while loop, for loop, foreach loop, break, and continue statements.',
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
