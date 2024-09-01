import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingWhileLoopPage());
}

class CProgrammingWhileLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Loops - while and do...while',
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
              // While Loop Section
              _buildSectionTitle('C while Loop'),
              _buildSectionText(
                'The while loop loops through a block of code as long as a specified condition is true.',
              ),
              _buildSectionText('Syntax:'),
              _buildCodeSnippet(
                '''while (condition) {
  // code block to be executed
}''',
              ),

              _buildSectionText(
                'In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:',
              ),
              _buildCodeSnippet(
                '''int i = 0;
while (i < 5) {
  printf("%d\\n", i);
  i++;
}''',
              ),
              _buildSectionText(
                'The example above will output the numbers 0 to 4.'),

              SizedBox(height: 20.0),

              // Do While Loop Section
              _buildSectionTitle('C do...while Loop'),
              _buildSectionText(
                'The do...while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.',
              ),
              _buildSectionText('Syntax:'),
              _buildCodeSnippet(
                '''do {
  // code block to be executed
}
while (condition);''',
              ),
              _buildSectionText(
                'The example below uses a do...while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:',
              ),
              _buildCodeSnippet(
                '''int i = 0;
do {
  printf("%d\\n", i);
  i++;
}
while (i < 5);''',
              ),
              _buildSectionText(
                'The example above will output the numbers 0 to 4.'),

              SizedBox(height: 20.0),

              // Break and Continue Section
              _buildSectionTitle('C Loop Control Statements'),
              _buildSectionText(
                'In addition to loops, C provides control statements to alter loop behavior: break and continue.',
              ),
              _buildSectionText('The `break` statement can be used to exit a loop early, while `continue` can skip the rest of the loop iteration and continue with the next iteration.'),
              _buildSectionText('Here\'s an example using `break`:'),
              _buildCodeSnippet(
                '''int i = 0;
while (i < 10) {
  if (i == 4) {
    break;
  }
  printf("%d\\n", i);
  i++;
}''',
              ),
              _buildSectionText(
                'The example above will output the numbers 0 to 3 and then break out of the loop when i equals 4.'),

              _buildSectionText('Here\'s an example using `continue`:'),
              _buildCodeSnippet(
                '''int i = 0;
while (i < 10) {
  if (i == 4) {
    i++;
    continue;
  }
  printf("%d\\n", i);
  i++;
}''',
              ),
              _buildSectionText(
                'The example above will output the numbers 0 to 9, except for 4, because the loop skips the iteration when i equals 4.'),

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
