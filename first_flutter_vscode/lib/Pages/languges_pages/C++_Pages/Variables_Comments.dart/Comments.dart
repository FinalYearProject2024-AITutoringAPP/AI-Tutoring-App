import 'package:flutter/material.dart';

void main() {
  runApp(CPlusPlusCommentsPage());
}

class CPlusPlusCommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Comments',
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
                'C++ Comments',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              Text(
                'Comments in C++ are used to explain and annotate code. They are ignored by the compiler, meaning they do not affect the program\'s execution. Comments are essential for code documentation and understanding.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Single-line Comments
              Text(
                'Single-line Comments:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nSingle-line comments start with two forward slashes (`//`). Everything following `//` on that line is considered a comment and will be ignored by the compiler.
Example:
\n// This is a single-line comment
int main() {
    // Print Hello, World!
    cout << "Hello, World!" << endl;
    return 0;
}
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Multi-line Comments
              Text(
                'Multi-line Comments:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nMulti-line comments start with `/*` and end with `*/`. Everything between these markers is treated as a comment and is ignored by the compiler. Multi-line comments are useful for longer explanations or commenting out blocks of code.
Example:
\n/* This is a multi-line comment.
   It spans multiple lines and is useful for long comments or code blocks.
*/
int main() {
    /* Print Hello, World!
       This is a multi-line comment.
    */
    cout << "Hello, World!" << endl;
    return 0;
}
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Nested Comments
              Text(
                'Nested Comments:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\nC++ does not support nested multi-line comments. The compiler will consider `/*` and `*/` as starting and ending points for comments and will not handle nested multi-line comments correctly.
Example:
\n/* This is a comment
   /* This is a nested comment */
   This is still part of the outer comment */
int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
''',
                style: TextStyle(fontSize: 18, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Best Practices
              Text(
                'Best Practices for Comments:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '''\n1. **Be Clear and Concise:** Comments should be clear and provide meaningful information. Avoid unnecessary comments.
2. **Explain Why, Not What:** Focus on explaining why something is done a certain way rather than what is being done, as the latter can usually be understood from the code itself.
3. **Update Comments:** Keep comments up-to-date with code changes to avoid confusion.
4. **Use Comments Sparingly:** Overusing comments can clutter code. Comment only where necessary to explain complex logic or design decisions.
''',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
