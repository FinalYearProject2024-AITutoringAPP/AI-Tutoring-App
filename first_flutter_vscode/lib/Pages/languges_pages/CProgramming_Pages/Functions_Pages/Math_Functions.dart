import 'package:flutter/material.dart';

void main() {
  runApp(CProgrammingMathFunctionsPage());
}

class CProgrammingMathFunctionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Math Functions',
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
                'C Math Functions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'The `math.h` library in C provides a set of functions to perform common mathematical operations. Here is a list of some commonly used math functions:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              _buildSection('### `sqrt()`', 'Calculates the square root of a number.', '```c\n#include <math.h>\n\nint main() {\n    double num = 9.0;\n    double result = sqrt(num);\n    printf("Square root of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `pow()`', 'Raises a number to the power of another number.', '```c\n#include <math.h>\n\nint main() {\n    double base = 2.0, exponent = 3.0;\n    double result = pow(base, exponent);\n    printf("%.2f raised to the power of %.2f is %.2f\\n", base, exponent, result);\n    return 0;\n}\n```'),
              _buildSection('### `fabs()`', 'Returns the absolute value of a floating-point number.', '```c\n#include <math.h>\n\nint main() {\n    double num = -5.7;\n    double result = fabs(num);\n    printf("Absolute value of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `ceil()`', 'Rounds a number up to the nearest integer.', '```c\n#include <math.h>\n\nint main() {\n    double num = 4.3;\n    double result = ceil(num);\n    printf("Ceiling of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `floor()`', 'Rounds a number down to the nearest integer.', '```c\n#include <math.h>\n\nint main() {\n    double num = 4.7;\n    double result = floor(num);\n    printf("Floor of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `fmod()`', 'Computes the floating-point remainder of division.', '```c\n#include <math.h>\n\nint main() {\n    double numerator = 10.0, denominator = 3.0;\n    double result = fmod(numerator, denominator);\n    printf("Remainder of %.2f divided by %.2f is %.2f\\n", numerator, denominator, result);\n    return 0;\n}\n```'),
              _buildSection('### `exp()`', 'Calculates the exponential value of a number (e^x).', '```c\n#include <math.h>\n\nint main() {\n    double num = 1.0;\n    double result = exp(num);\n    printf("Exponent of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `log()`', 'Computes the natural logarithm (base e) of a number.', '```c\n#include <math.h>\n\nint main() {\n    double num = 2.718;\n    double result = log(num);\n    printf("Natural log of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `log10()`', 'Computes the base-10 logarithm of a number.', '```c\n#include <math.h>\n\nint main() {\n    double num = 100.0;\n    double result = log10(num);\n    printf("Base-10 log of %.2f is %.2f\\n", num, result);\n    return 0;\n}\n```'),
              _buildSection('### `sin()`, `cos()`, `tan()`', 'Compute the sine, cosine, and tangent of an angle (in radians).', '```c\n#include <math.h>\n\nint main() {\n    double angle = 1.0;\n    double sinResult = sin(angle);\n    double cosResult = cos(angle);\n    double tanResult = tan(angle);\n    printf("Sine of %.2f is %.2f\\n", angle, sinResult);\n    printf("Cosine of %.2f is %.2f\\n", angle, cosResult);\n    printf("Tangent of %.2f is %.2f\\n", angle, tanResult);\n    return 0;\n}\n```'),
              _buildSection('### `atan()`, `asin()`, `acos()`', 'Compute the arctangent, arcsine, and arccosine of a value.', '```c\n#include <math.h>\n\nint main() {\n    double value = 0.5;\n    double atanResult = atan(value);\n    double asinResult = asin(value);\n    double acosResult = acos(value);\n    printf("Arctangent of %.2f is %.2f radians\\n", value, atanResult);\n    printf("Arcsine of %.2f is %.2f radians\\n", value, asinResult);\n    printf("Arccosine of %.2f is %.2f radians\\n", value, acosResult);\n    return 0;\n}\n```'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String description, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(height: 10.0),
        _buildCodeBlock(code),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(fontFamily: 'Courier New', fontSize: 16, color: Colors.white),
      ),
    );
  }
}
