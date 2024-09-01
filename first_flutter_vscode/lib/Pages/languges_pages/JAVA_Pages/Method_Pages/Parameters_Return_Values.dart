import 'package:flutter/material.dart';

void main() {
  runApp(JavaMethodParametersPage());
}

class JavaMethodParametersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Method Parameters and Return Values',
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
                'Java Methods: Parameters and Return Values',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Text(
                'In Java, methods can accept parameters and return values. Parameters are inputs you pass to the method to be used inside it. Return values are outputs that a method produces and can be returned to the caller.',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20.0),
              
              Text(
                '### Method Parameters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A method can have multiple parameters, separated by commas. Parameters must have a type and a name. Here\'s an example of a method with parameters:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    // Method with parameters
    static void greet(String name, int age) {
        System.out.println("Hello " + name + ". You are " + age + " years old.");
    }

    public static void main(String[] args) {
        // Calling the method with arguments
        greet("Alice", 30);
    }
}
''',
              ),
              SizedBox(height: 20.0),
              
              Text(
                '### Method Return Values',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'A method can also return a value. The return type specifies what kind of value the method will return. If a method does not return a value, its return type is `void`. Here\'s an example of a method that returns a value:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    // Method with return value
    static int addNumbers(int a, int b) {
        return a + b;
    }

    public static void main(String[] args) {
        int sum = addNumbers(10, 20);
        System.out.println("Sum: " + sum);
    }
}
''',
              ),
              SizedBox(height: 20.0),
              
              Text(
                '### Returning Multiple Values',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Java methods can only return a single value. To return multiple values, you can use a data structure such as an array or a custom class. Here\'s an example of returning multiple values using an array:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10.0),
              _buildCodeBlock(
                '''
public class Main {
    // Method returning multiple values using an array
    static int[] getMinMax(int[] numbers) {
        int[] minMax = new int[2];
        minMax[0] = numbers[0];
        minMax[1] = numbers[0];

        for (int num : numbers) {
            if (num < minMax[0]) minMax[0] = num;
            if (num > minMax[1]) minMax[1] = num;
        }

        return minMax;
    }

    public static void main(String[] args) {
        int[] numbers = {10, 20, 5, 40, 30};
        int[] result = getMinMax(numbers);
        System.out.println("Min: " + result[0]);
        System.out.println("Max: " + result[1]);
    }
}
''',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'Courier',
            color: Colors.green[400],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
