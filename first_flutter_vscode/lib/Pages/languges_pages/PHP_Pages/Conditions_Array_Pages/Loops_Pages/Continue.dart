import 'package:flutter/material.dart';

void main() {
  runApp(PHPContinuePage());
}

class PHPContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Continue Statement',
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
                'PHP Continue Statement',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The continue statement is used to skip the rest of the current iteration of a loop and continue with the next iteration. This is useful for skipping specific conditions within a loop.',
              ),

              // Syntax
              _buildSectionTitle('Syntax'),
              _buildSectionContent(
                'The syntax of the continue statement is as follows:',
              ),
              _buildCodeSnippet(
                '''
// Syntax for continue statement
continue;
''',
              ),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of using the continue statement in a for loop:',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 10; \$i++) {
    if (\$i % 2 == 0) {
        continue; // Skip the rest of the loop iteration for even numbers
    }
    echo "\$i<br>";
}
''',
              ),
              _buildSectionContent(
                'In this example, the continue statement skips the iteration of the loop for even numbers. The output will be "1", "3", "5", "7", and "9" on separate lines.',
              ),

              // Nested Loops Example
              _buildSectionTitle('Nested Loops Example'),
              _buildSectionContent(
                'The continue statement can also be used in nested loops. By default, it will only skip the current iteration of the innermost loop:',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 3; \$i++) {
    for (\$j = 1; \$j <= 3; \$j++) {
        if (\$j == 2) {
            continue; // Skip the rest of the inner loop iteration when \$j is 2
        }
        echo "\$i - \$j<br>";
    }
}
''',
              ),
              _buildSectionContent(
                'In this example, the continue statement skips the iteration of the inner loop when \$j is 2. The output will show "1 - 1", "1 - 3", "2 - 1", "2 - 3", "3 - 1", and "3 - 3".',
              ),

              // Notes
              _buildSectionTitle('Notes'),
              _buildSectionContent(
                'The continue statement is useful for skipping specific parts of a loop iteration and proceeding with the next one. It helps in controlling the flow of the loop based on certain conditions.',
              ),

              // Related Topics
              _buildSectionTitle('Related Topics'),
              _buildSectionContent(
                'For more information on loop control, you may also want to check out: break statement and various looping constructs (for, while, do...while, foreach).',
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
