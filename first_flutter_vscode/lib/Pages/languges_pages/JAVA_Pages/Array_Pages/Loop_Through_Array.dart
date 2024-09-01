import 'package:flutter/material.dart';

void main() {
  runApp(JAVALoopThroughArrayPage());
}

class JAVALoopThroughArrayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Loop Through Arrays',
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
                'Loop Through an Array',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'You can loop through the array elements with the for loop, '
                'and use the length property to specify how many times the loop should run.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'Example:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'public class Main {\n'
                  '  public static void main(String[] args) {\n'
                  '    String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};\n'
                  '    for (int i = 0; i < cars.length; i++) {\n'
                  '      System.out.println(cars[i]);\n'
                  '    }\n'
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
                'You can also use the for-each loop, which is used exclusively to loop through elements in an array:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'Example:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'public class Main {\n'
                  '  public static void main(String[] args) {\n'
                  '    String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};\n'
                  '    for (String i : cars) {\n'
                  '      System.out.println(i);\n'
                  '    }\n'
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
                'Note: The example above can be read like this: for each String element (called i - as in index) '
                'in cars, print out the value of i.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'Loop Through Multidimensional Arrays',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'You can also use a nested for loop to loop through multidimensional arrays:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 16.0),
              Text(
                'Example:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  'public class Main {\n'
                  '  public static void main(String[] args) {\n'
                  '    int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };\n'
                  '    for (int i = 0; i < myNumbers.length; i++) {\n'
                  '      for (int j = 0; j < myNumbers[i].length; j++) {\n'
                  '        System.out.println(myNumbers[i][j]);\n'
                  '      }\n'
                  '    }\n'
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
                'The example above can be read like this: for each element (row) in myNumbers, '
                'loop through the elements in that row.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
