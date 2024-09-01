import 'package:flutter/material.dart';

void main() {
  runApp(JAVACharactersPage());
}

class JAVACharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Characters',
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
                'Java Characters',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              _buildContent(
                context,
                'What is a Character?',
                'In Java, a character is a data type that represents a single 16-bit Unicode character. The `char` data type is used to store characters and is enclosed in single quotes.',
              ),
              _buildContent(
                context,
                'Character Example:',
                'Here is an example of how to use characters in Java:',
              ),
              _buildCodeSnippet(
                context,
                'Example Code:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        char letterA = \'A\';\n'
                '        char letterB = \'B\';\n'
                '        System.out.println("Character A: " + letterA);\n'
                '        System.out.println("Character B: " + letterB);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Character Literals',
                'Character literals are enclosed in single quotes and represent a single character. For example, \'A\' and \'1\' are valid character literals.',
              ),
              _buildContent(
                context,
                'Character Data Type',
                'In Java, the `char` data type is used to store single characters. It uses 2 bytes of memory to store the Unicode representation of the character.',
              ),
              _buildContent(
                context,
                'Unicode Characters',
                'Java uses Unicode to represent characters. Unicode allows for a wide range of characters from various languages and symbols. For example, the Unicode for the letter A is \\u0041.',
              ),
              _buildCodeSnippet(
                context,
                'Unicode Example:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        char unicodeChar = \\u0041;\n'
                '        System.out.println("Unicode Character: " + unicodeChar);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Character Operations',
                'Characters can be manipulated using arithmetic operations and methods. For example, you can increment a character to get the next character in the Unicode sequence.',
              ),
              _buildCodeSnippet(
                context,
                'Character Operation Example:',
                'public class Main {\n'
                '    public static void main(String[] args) {\n'
                '        char letter = \'A\';\n'
                '        char nextLetter = (char) (letter + 1);\n'
                '        System.out.println("Next Letter: " + nextLetter);\n'
                '    }\n'
                '}\n',
              ),
              _buildContent(
                context,
                'Summary',
                'Characters in Java are represented using the `char` data type and are stored as Unicode values. They can be used in various operations and are essential for handling textual data.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildCodeSnippet(BuildContext context, String title, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.black,
          child: Text(
            code,
            style: TextStyle(
              fontFamily: 'CourierNew',
              fontSize: 16,
              color: Colors.greenAccent,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
