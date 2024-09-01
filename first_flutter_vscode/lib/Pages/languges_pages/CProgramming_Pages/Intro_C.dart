import 'package:flutter/material.dart';

class CIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to C Programming',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'What is C?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'C is a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972. It is one of the most widely used programming languages and is often used in operating systems, language compilers, and as a foundation for learning more advanced programming languages.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Why Learn C?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. C is the foundation for many other programming languages, including C++, C#, and Java.\n'
              '2. Learning C provides a strong understanding of how computers work, including memory management and low-level operations.\n'
              '3. C is highly efficient, making it suitable for system programming, embedded systems, and performance-critical applications.\n'
              '4. Many modern operating systems, including Unix and Linux, are written in C.\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Applications of C Programming',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'C is used in a variety of applications, including:\n'
              '1. Developing operating systems and language compilers.\n'
              '2. Building desktop applications.\n'
              '3. Creating hardware drivers and system utilities.\n'
              '4. Developing embedded systems and real-time systems.\n'
              '5. Game development and graphical applications.\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'History of C Programming',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'C was developed in the early 1970s by Dennis Ritchie at Bell Laboratories as a system programming language for the Unix operating system. The language was designed to provide low-level access to memory and to map efficiently to machine instructions, while still being relatively easy to use and portable across different systems.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Key Features of C Programming',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Low-level access to memory.\n'
              '2. Simple and fast.\n'
              '3. Rich set of built-in operators and functions.\n'
              '4. Portability across platforms.\n'
              '5. Flexibility in building various types of software, from operating systems to games.\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
