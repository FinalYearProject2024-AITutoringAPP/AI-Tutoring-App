import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingStringFunctionsPage());
}

class CProgrammingStringFunctionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C String Functions',
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
                'C String Functions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction Section
              _buildSectionTitle('Introduction'),
              _buildSectionContent(
                'Strings in C are arrays of characters, and several functions are available to manipulate these strings. '
                'These functions are declared in the <string.h> header file.'
              ),
              SizedBox(height: 20.0),

              // List of String Functions
              _buildSectionTitle('Commonly Used String Functions'),
              _buildSectionContent(
                'Here are some commonly used string functions in C:\n'
                '- `strlen()`: Returns the length of a string\n'
                '- `strcpy()`: Copies a string to another\n'
                '- `strcat()`: Concatenates (joins) two strings\n'
                '- `strcmp()`: Compares two strings\n'
                '- `strchr()`: Finds the first occurrence of a character in a string\n'
                '- `strstr()`: Finds the first occurrence of a substring in a string'
              ),
              SizedBox(height: 20.0),

              // Example of Using String Functions
              _buildSectionTitle('Example'),
              _buildSectionContent(
                '```c\n'
                '#include <stdio.h>\n'
                '#include <string.h>\n\n'
                'int main() {\n'
                '  char str1[20] = "Hello";\n'
                '  char str2[20] = "World";\n'
                '  char str3[20];\n\n'
                '  // Copy str1 into str3\n'
                '  strcpy(str3, str1);\n'
                '  printf("strcpy: %s\\n", str3);\n\n'
                '  // Concatenate str1 and str2\n'
                '  strcat(str1, str2);\n'
                '  printf("strcat: %s\\n", str1);\n\n'
                '  // Find the length of str1\n'
                '  int len = strlen(str1);\n'
                '  printf("strlen: %d\\n", len);\n\n'
                '  // Compare str1 and str2\n'
                '  int result = strcmp(str1, str2);\n'
                '  printf("strcmp: %d\\n", result);\n\n'
                '  // Find the first occurrence of \'o\' in str1\n'
                '  char *ptr = strchr(str1, \'o\');\n'
                '  printf("strchr: %s\\n", ptr);\n\n'
                '  // Find the first occurrence of "World" in str1\n'
                '  ptr = strstr(str1, "World");\n'
                '  printf("strstr: %s\\n", ptr);\n\n'
                '  return 0;\n'
                '}\n'
                '```\n'
                'This program demonstrates the use of various string functions in C.'
              ),
              SizedBox(height: 20.0),

              // Explanation of the Example
              _buildSectionTitle('Explanation of the Example'),
              _buildSectionContent(
                '- `strcpy(str3, str1)`: Copies the contents of `str1` into `str3`.\n'
                '- `strcat(str1, str2)`: Concatenates `str2` onto the end of `str1`.\n'
                '- `strlen(str1)`: Returns the length of the string `str1`.\n'
                '- `strcmp(str1, str2)`: Compares `str1` and `str2`. Returns 0 if they are equal.\n'
                '- `strchr(str1, \'o\')`: Finds the first occurrence of the character \'o\' in `str1`.\n'
                '- `strstr(str1, "World")`: Finds the first occurrence of the substring "World" in `str1`.'
              ),
              SizedBox(height: 20.0),

              // Important Notes
              _buildSectionTitle('Important Notes'),
              _buildSectionContent(
                'Remember to include the <string.h> header file to use these functions. '
                'These functions make it easier to work with strings in C, allowing for copying, concatenating, comparing, and searching within strings.'
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
    return Text(
      content,
      style: TextStyle(fontSize: 16, color: Colors.white70),
    );
  }
}
