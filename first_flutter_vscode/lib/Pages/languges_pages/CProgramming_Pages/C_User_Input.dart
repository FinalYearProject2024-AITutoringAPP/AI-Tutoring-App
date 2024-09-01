import 'package:flutter/material.dart';

class CUserInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C User Input',
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
          children: const [
            // Introduction
            Text(
              'User Input in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In C programming, the `scanf()` function is used to take input from the user. It allows programs to accept user-provided data during runtime, making applications interactive and dynamic.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Syntax
            Text(
              'Syntax of scanf()',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The basic syntax of the `scanf()` function is as follows:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'scanf("format specifier", &variable);',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Here, `format specifier` determines the type of data to be read, and `&variable` is the address of the variable where the input will be stored.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Example
            Text(
              'Example: Reading an Integer',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The following example demonstrates how to read an integer input from the user:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int num;\n    printf("Enter an integer: ");\n    scanf("%d", &num);\n    printf("You entered: %d", num);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '**Output:**\nEnter an integer: 5\nYou entered: 5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Data Types
            Text(
              'Input for Different Data Types',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The `scanf()` function can be used to read various data types. Below are examples for different types of inputs:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),

            // Integer Input
            Text(
              '1. Integer Input (`%d`)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 5),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int age;\n    printf("Enter your age: ");\n    scanf("%d", &age);\n    printf("Your age is: %d", age);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program reads an integer value for age and displays it.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 15),

            // Float Input
            Text(
              '2. Floating-Point Input (`%f`)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 5),
            Text(
              '#include <stdio.h>\n\nint main() {\n    float salary;\n    printf("Enter your salary: ");\n    scanf("%f", &salary);\n    printf("Your salary is: %.2f", salary);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program reads a floating-point number for salary and displays it with two decimal places.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 15),

            // Character Input
            Text(
              '3. Character Input (`%c`)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 5),
            Text(
              '#include <stdio.h>\n\nint main() {\n    char grade;\n    printf("Enter your grade: ");\n    scanf(" %c", &grade);\n    printf("Your grade is: %c", grade);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program reads a single character for grade and displays it. Note the space before `%c` in `scanf` to consume any leftover whitespace.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 15),

            // String Input
            Text(
              '4. String Input (`%s`)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 5),
            Text(
              '#include <stdio.h>\n\nint main() {\n    char name[50];\n    printf("Enter your name: ");\n    scanf("%s", name);\n    printf("Your name is: %s", name);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program reads a string for the user\'s name and displays it. Note that `scanf("%s", name);` does not read spaces. To read strings with spaces, functions like `fgets()` can be used.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Notes
            Text(
              'Important Notes',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. **Address Operator (`&`)**: The `&` symbol is used to provide the address of the variable where the input will be stored. This is necessary because `scanf()` needs to modify the variable\'s value.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '2. **Format Specifiers**: Ensure that the format specifier matches the data type of the variable you are reading. Common specifiers include `%d` for integers, `%f` for floating-point numbers, `%c` for characters, and `%s` for strings.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '3. **Buffer Overflow**: When reading strings, be cautious of buffer overflow by specifying the maximum number of characters to read. For example, `scanf("%49s", name);` ensures that no more than 49 characters are read, leaving space for the null terminator.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '4. **Reading Multiple Inputs**: You can read multiple inputs in a single `scanf()` call by specifying multiple format specifiers and corresponding variables.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Example:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 5),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int age;\n    float height;\n    printf("Enter your age and height: ");\n    scanf("%d %f", &age, &height);\n    printf("Age: %d\\nHeight: %.2f", age, height);\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This program reads both age and height from the user and displays them.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Summary
            Text(
              'Summary',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The `scanf()` function is a powerful tool in C for capturing user input. By understanding its syntax and proper usage, you can create interactive and dynamic programs. Always ensure that the format specifiers match the data types of the variables and be mindful of potential issues like buffer overflow when handling strings.',
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
