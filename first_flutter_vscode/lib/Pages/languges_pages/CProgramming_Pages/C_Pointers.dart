import 'package:flutter/material.dart';

class CPointersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'C Pointers',
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
            // Introduction
            Text(
              'Pointers in C',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pointers are a special type of variable in C that store memory addresses as their value. They are used to access and manipulate data stored in memory, enabling powerful and efficient programming techniques.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Syntax
            Text(
              'Syntax of Pointers',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'To declare a pointer in C, use the asterisk (*) symbol before the variable name:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'dataType *pointerName;',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'For example, to declare a pointer to an integer:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'int *ptr;',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),

            // Pointer Example
            Text(
              'Example: Pointer to an Integer',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Below is an example of how pointers work in C:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int var = 5;\n    int *ptr;\n    ptr = &var;\n\n    printf("Value of var: %d\\n", var);\n    printf("Address of var: %p\\n", &var);\n    printf("Value of ptr: %p\\n", ptr);\n    printf("Value pointed by ptr: %d\\n", *ptr);\n\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '**Output:**\nValue of var: 5\nAddress of var: 0x7ffd9b8c8f7c\nValue of ptr: 0x7ffd9b8c8f7c\nValue pointed by ptr: 5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Pointer Arithmetic
            Text(
              'Pointer Arithmetic',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pointers in C can be manipulated using arithmetic operations, enabling you to traverse memory addresses. Common operations include incrementing and decrementing pointer values to move to the next or previous memory locations.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Consider the following example:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int var[] = {10, 20, 30};\n    int *ptr = var;\n\n    printf("First element: %d\\n", *ptr);\n    ptr++;\n    printf("Second element: %d\\n", *ptr);\n    ptr++;\n    printf("Third element: %d\\n", *ptr);\n\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '**Output:**\nFirst element: 10\nSecond element: 20\nThird element: 30',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Pointers and Arrays
            Text(
              'Pointers and Arrays',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pointers and arrays in C are closely related. The name of an array acts like a pointer to its first element, which means you can use pointers to access and manipulate array elements.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Consider the following example:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int arr[] = {1, 2, 3, 4, 5};\n    int *ptr = arr;\n\n    for(int i = 0; i < 5; i++) {\n        printf("Element %d: %d\\n", i, *(ptr + i));\n    }\n\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '**Output:**\nElement 0: 1\nElement 1: 2\nElement 2: 3\nElement 3: 4\nElement 4: 5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),

            // Pointer to Pointer
            Text(
              'Pointer to Pointer',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In C, you can also create a pointer to another pointer. This allows for multi-level indirection, which is useful in various scenarios such as working with dynamic memory, linked lists, and more.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Consider the following example:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '#include <stdio.h>\n\nint main() {\n    int var = 100;\n    int *ptr;\n    int **pptr;\n\n    ptr = &var;\n    pptr = &ptr;\n\n    printf("Value of var: %d\\n", var);\n    printf("Value available at *ptr: %d\\n", *ptr);\n    printf("Value available at **pptr: %d\\n", **pptr);\n\n    return 0;\n}',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 18.0,
                fontFamily: 'Courier New',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '**Output:**\nValue of var: 100\nValue available at *ptr: 100\nValue available at **pptr: 100',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 30),

            // Conclusion
            Text(
              'Conclusion',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pointers are a fundamental part of C programming, allowing for direct manipulation of memory, efficient data handling, and powerful programming techniques. Understanding pointers is essential for mastering C programming.',
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
