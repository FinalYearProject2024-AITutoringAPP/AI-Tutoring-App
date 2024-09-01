import 'package:flutter/material.dart';

void main() {
  runApp(PHPBreakPage());
}

class PHPBreakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Break Statement',
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
                'PHP Break Statement',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'The break statement is used to terminate the execution of a loop. When a break statement is encountered, the loop is immediately terminated, and control is transferred to the statement following the loop.',
              ),

              // Syntax
              _buildSectionTitle('Syntax'),
              _buildSectionContent(
                'The syntax of the break statement is as follows:',
              ),
              _buildCodeSnippet(
                '''
// Syntax for break statement
break;
''',
              ),

              // Example
              _buildSectionTitle('Example'),
              _buildSectionContent(
                'Here is an example of using the break statement in a while loop:',
              ),
              _buildCodeSnippet(
                '''
\$i = 1;
while (\$i <= 10) {
    if (\$i == 5) {
        break; // Break the loop when \$i is 5
    }
    echo "\$i<br>";
    \$i++;
}
''',
              ),
              _buildSectionContent(
                'In this example, the while loop will terminate when \$i is equal to 5. The output will be "1", "2", "3", and "4" on separate lines. The loop stops before reaching 5.',
              ),

              // Nested Loops Example
              _buildSectionTitle('Nested Loops Example'),
              _buildSectionContent(
                'The break statement can also be used to exit from nested loops. In this case, it will only exit the innermost loop:',
              ),
              _buildCodeSnippet(
                '''
for (\$i = 1; \$i <= 3; \$i++) {
    for (\$j = 1; \$j <= 3; \$j++) {
        if (\$j == 2) {
            break; // Break the inner loop when \$j is 2
        }
        echo "\$i - \$j<br>";
    }
}
''',
              ),
              _buildSectionContent(
                'In this example, the inner loop will terminate when \$j is equal to 2. The output will show "1 - 1" and "2 - 1", but not "2 - 2" or "3 - 1".',
              ),

              // Notes
              _buildSectionTitle('Notes'),
              _buildSectionContent(
                'The break statement is useful for terminating loops prematurely based on a condition. It is often used in situations where you want to exit a loop when a certain condition is met.',
              ),

              // Related Topics
              _buildSectionTitle('Related Topics'),
              _buildSectionContent(
                'For more information on loop control, you may also want to check out: continue statement and various looping constructs (for, while, do...while, foreach).',
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
