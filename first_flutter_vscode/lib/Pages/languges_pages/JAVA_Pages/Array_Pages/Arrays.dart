import 'package:flutter/material.dart';

void main() {
  runApp(JAVAArraysPage());
}

class JAVAArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Arrays',
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
                'Java Arrays',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'To declare an array, define the variable type with square brackets:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'String[] cars;',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'We have now declared a variable that holds an array of strings. To insert values to it, you can place the values in a comma-separated list, inside curly braces:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Access the Elements of an Array',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can access an array element by referring to the index number.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'This statement accesses the value of the first element in cars:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'System.out.println(cars[0]);',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'This example outputs "Volvo":',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'public class Main {\n'
                  '  public static void main(String[] args) {\n'
                  '    String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};\n'
                  '    System.out.println(cars[0]);\n'
                  '  }\n'
                  '}',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Change an Array Element',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'To change the value of a specific element, refer to the index number:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'cars[0] = "Opel";',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Array Length',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'To find out how many elements an array has, use the length property:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'System.out.println(cars.length);',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Loop Through an Array with a For Loop',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can loop through the array elements with the for loop, and use the length property to specify how many times the loop should run:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'for (int i = 0; i < cars.length; i++) {\n'
                  '  System.out.println(cars[i]);\n'
                  '}',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Other Types of Arrays',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Arrays can store any data type:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'int[] myNum = {10, 20, 30, 40};\n'
                  'System.out.println(myNum[2]);',
                  style: TextStyle(
                    fontFamily: 'Courier New',
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
