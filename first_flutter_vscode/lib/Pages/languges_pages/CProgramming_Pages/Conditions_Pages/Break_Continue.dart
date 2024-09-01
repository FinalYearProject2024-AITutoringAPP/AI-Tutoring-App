import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingBreakContinuePage());
}

class CProgrammingBreakContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Break and Continue',
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
              // Break and Continue Section
              _buildSectionTitle('C break Statement'),
              _buildSectionText(
                'The break statement is used to terminate the current loop and transfer control to the statement following the loop.',
              ),
              _buildSectionText('The example below demonstrates the use of the break statement:'),
              _buildCodeSnippet(
                '''int i;
for (i = 0; i < 10; i++) {
  if (i == 4) {
    break;
  }
  printf("%d\\n", i);
}''',
              ),
              _buildSectionText(
                'In the example above, the loop breaks when the value of `i` becomes 4, so the output will be 0, 1, 2, 3.',
              ),

              SizedBox(height: 20.0),

              _buildSectionTitle('C continue Statement'),
              _buildSectionText(
                'The continue statement is used to skip the current iteration of a loop and continue with the next iteration.',
              ),
              _buildSectionText('The example below demonstrates the use of the continue statement:'),
              _buildCodeSnippet(
                '''int i;
for (i = 0; i < 10; i++) {
  if (i == 4) {
    continue;
  }
  printf("%d\\n", i);
}''',
              ),
              _buildSectionText(
                'In the example above, the value 4 is skipped, so the output will be 0, 1, 2, 3, 5, 6, 7, 8, 9.',
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
