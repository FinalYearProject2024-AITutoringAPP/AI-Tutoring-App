import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingReadFilesPage());
}

class CProgrammingReadFilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Read Files',
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
                'C Read Files',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'To read from a file in C, you need to follow these steps:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('1. Opening a File'),
              Text(
                'You must open the file using fopen() and specify the mode "r" to open it for reading:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              _buildCodeSnippet(
                'FILE *fptr;\n'
                'fptr = fopen("filename.txt", "r");\n'
                'if (fptr == NULL) {\n'
                '   printf("Error opening file!");\n'
                '   exit(1);\n'
                '}'
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('2. Reading a File'),
              Text(
                'You can use the fscanf() function to read content from the file, similar to scanf() but for files:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              _buildCodeSnippet(
                'char content[100];\n'
                'fscanf(fptr, "%s", content);\n'
                'printf("File content: %s", content);'
              ),
              Text(
                'In this example, the content of the file is stored in a character array, and then it is printed using printf().',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('3. Closing a File'),
              Text(
                'After reading the file, it\'s important to close it using the fclose() function:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              _buildCodeSnippet('fclose(fptr);'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Example Code'),
              _buildCodeSnippet(
                '#include <stdio.h>\n'
                '#include <stdlib.h>\n'
                '\n'
                'int main() {\n'
                '   char content[100];\n'
                '   FILE *fptr;\n'
                '   fptr = fopen("filename.txt", "r");\n'
                '   if (fptr == NULL) {\n'
                '       printf("Error opening file!");\n'
                '       exit(1);\n'
                '   }\n'
                '   fscanf(fptr, "%s", content);\n'
                '   printf("File content: %s", content);\n'
                '   fclose(fptr);\n'
                '   return 0;\n'
                '}'
              ),
              Text(
                'This example demonstrates how to open a file, read its content, and then close the file.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Using fgets() and fgetc()'),
              Text(
                'You can also use fgets() to read a line of text or fgetc() to read a single character:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              _buildCodeSnippet(
                '// Using fgets()\n'
                'fgets(content, 100, fptr);\n'
                'printf("File content: %s", content);\n\n'
                '// Using fgetc()\n'
                'char c = fgetc(fptr);\n'
                'printf("Character: %c", c);'
              ),
              Text(
                'These functions allow more flexibility when reading files, such as reading entire lines or characters.',
                style: TextStyle(fontSize: 18, color: Colors.white),
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
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      color: Colors.black,
      child: Text(
        code,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Courier New',
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
