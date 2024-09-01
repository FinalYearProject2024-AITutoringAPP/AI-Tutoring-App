import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingForLoopPage());
}

class CProgrammingForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C For Loops',
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
              // For Loop Section
              _buildSectionTitle('C for Loop'),
              _buildSectionText(
                'The for loop loops through a block of code a number of times.',
              ),
              _buildSectionText('Syntax:'),
              _buildCodeSnippet(
                '''for (statement 1; statement 2; statement 3) {
  // code block to be executed
}''',
              ),
              _buildSectionText(
                'Statement 1 is executed (one time) before the execution of the code block.\n'
                'Statement 2 defines the condition for executing the code block.\n'
                'Statement 3 is executed (every time) after the code block has been executed.',
              ),
              _buildSectionText(
                'The example below will print the numbers 0 to 4:',
              ),
              _buildCodeSnippet(
                '''int i;
for (i = 0; i < 5; i++) {
  printf("%d\\n", i);
}''',
              ),
              _buildSectionText(
                'The example above will output the numbers 0 to 4.'),

              SizedBox(height: 20.0),

              // Nested For Loop Section
              _buildSectionTitle('C Nested for Loop'),
              _buildSectionText(
                'A nested for loop is a for loop inside another for loop. The inner loop will be executed one time for each iteration of the outer loop.',
              ),
              _buildSectionText('The example below uses nested for loops to print a pattern of stars:'),
              _buildCodeSnippet(
                '''int i, j;
for (i = 1; i <= 5; i++) {
  for (j = 1; j <= i; j++) {
    printf("*");
  }
  printf("\\n");
}''',
              ),
              _buildSectionText(
                'The example above will output a triangle of stars like this:'),
              _buildCodeSnippet(
                '''*
**
***
****
*****''',
              ),

              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  // Helper methods for building sections
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black,
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier New',
          fontSize: 16,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
