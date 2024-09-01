import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingCreateFilesPage());
}

class CProgrammingCreateFilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Files',
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
                'C Files',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'Files in C are used to store data permanently on a disk. There are different operations that can be performed on files in C:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('1. Creating Files'),
              _buildCodeSnippet('FILE *fptr;\n'
                  'fptr = fopen("filename.txt", "w");\n'
                  'if(fptr == NULL) {\n'
                  '   printf("Error!");\n'
                  '   exit(1);\n'
                  '}'),
              Text(
                'In the code above, we create a file named "filename.txt" using the "w" mode, which means "write". If the file does not exist, it will be created.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('2. Writing to Files'),
              _buildCodeSnippet('fprintf(fptr, "Writing to file.");'),
              Text(
                'You can write to a file using the fprintf() function. This function works similarly to printf(), but instead of sending output to the console, it sends output to a file.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('3. Closing Files'),
              _buildCodeSnippet('fclose(fptr);'),
              Text(
                'It is important to close a file after you are done with it to free up resources. This is done using the fclose() function.',
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
                  '   if(fptr == NULL) {\n'
                  '       printf("Error!");\n'
                  '       exit(1);\n'
                  '   }\n'
                  '   fprintf(fptr, "Writing to file.");\n'
                  '   fclose(fptr);\n'
                  '   return 0;\n'
                  '}'
              ),
              Text(
                'In this example, a file named "filename.txt" is created, and the text "Writing to file." is written to it. The file is then closed.',
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
