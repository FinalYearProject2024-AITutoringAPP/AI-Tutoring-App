import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingWriteToFilesPage());
}

class CProgrammingWriteToFilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Write to Files',
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
                'C Write to Files',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'To write to a file in C, you need to open the file in "w" or "a" mode:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('1. Writing to a File'),
              _buildCodeSnippet('FILE *fptr;\n'
                  'fptr = fopen("filename.txt", "w");\n'
                  'if (fptr == NULL) {\n'
                  '   printf("Error!");\n'
                  '   exit(1);\n'
                  '}\n'
                  'fprintf(fptr, "Some text to write.");\n'
                  'fclose(fptr);'),
              Text(
                'In this example, "filename.txt" is opened in "w" mode, which means the file will be created if it does not exist, and its content will be overwritten. The fprintf() function is used to write text to the file.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('2. Appending to a File'),
              _buildCodeSnippet('fptr = fopen("filename.txt", "a");\n'
                  'if (fptr == NULL) {\n'
                  '   printf("Error!");\n'
                  '   exit(1);\n'
                  '}\n'
                  'fprintf(fptr, "Additional text to append.");\n'
                  'fclose(fptr);'),
              Text(
                'To append text to a file, you can open it in "a" mode. This mode allows you to add content to the end of the file without overwriting the existing content.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Example Code'),
              _buildCodeSnippet(
                  '#include <stdio.h>\n'
                  '#include <stdlib.h>\n'
                  '\n'
                  'int main() {\n'
                  '   FILE *fptr;\n'
                  '   fptr = fopen("filename.txt", "w");\n'
                  '   if (fptr == NULL) {\n'
                  '       printf("Error!");\n'
                  '       exit(1);\n'
                  '   }\n'
                  '   fprintf(fptr, "Writing some text.");\n'
                  '   fclose(fptr);\n'
                  '   \n'
                  '   fptr = fopen("filename.txt", "a");\n'
                  '   if (fptr == NULL) {\n'
                  '       printf("Error!");\n'
                  '       exit(1);\n'
                  '   }\n'
                  '   fprintf(fptr, "Appending more text.");\n'
                  '   fclose(fptr);\n'
                  '   return 0;\n'
                  '}'
              ),
              Text(
                'This example demonstrates how to write to a file and then append additional text to it.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
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
