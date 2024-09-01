import 'package:flutter/material.dart';

void main() {
  runApp(ArrayPage());
}

class ArrayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Arrays',
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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Arrays',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Creating an Array',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'In Python, an array can be created using a list. The list is a built-in data type in Python that can be used to create arrays.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'print(cars)',
                '["Ford", "BMW", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Accessing Array Elements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can access array elements by referring to the index number.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'print(cars[0])\n'
                'print(cars[1])\n'
                'print(cars[2])',
                'Ford\nBMW\nVolvo',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Array Length',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'To determine the length of an array, use the len() method.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'print(len(cars))',
                '3',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Looping Through an Array',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can loop through the array elements using a for loop.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'for car in cars:\n'
                '    print(car)',
                'Ford\nBMW\nVolvo',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Adding Elements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can add elements to an array using the append() method.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.append("Audi")\n'
                'print(cars)',
                '["Ford", "BMW", "Volvo", "Audi"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Removing Elements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'You can remove elements from an array using the remove() method.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.remove("BMW")\n'
                'print(cars)',
                '["Ford", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'Array Methods',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Python lists come with a variety of methods that you can use to manipulate them.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'The append() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The append() method adds an element at the end of the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.append("Audi")\n'
                'print(cars)',
                '["Ford", "BMW", "Volvo", "Audi"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The extend() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The extend() method adds elements of a list (or any iterable) to the end of the current list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'more_cars = ["Audi", "Mercedes"]\n'
                'cars.extend(more_cars)\n'
                'print(cars)',
                '["Ford", "BMW", "Volvo", "Audi", "Mercedes"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The insert() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The insert() method adds an element at the specified position.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.insert(1, "Audi")\n'
                'print(cars)',
                '["Ford", "Audi", "BMW", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The remove() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The remove() method removes the first occurrence of a specified value.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.remove("BMW")\n'
                'print(cars)',
                '["Ford", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The pop() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The pop() method removes the element at the specified position.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.pop(1)\n'
                'print(cars)',
                '["Ford", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The clear() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The clear() method removes all elements from the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.clear()\n'
                'print(cars)',
                '[]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The copy() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The copy() method returns a shallow copy of the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'new_cars = cars.copy()\n'
                'print(new_cars)',
                '["Ford", "BMW", "Volvo"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The index() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The index() method returns the index of the first occurrence of a specified value.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'print(cars.index("BMW"))',
                '1',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The count() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The count() method returns the number of times a specified value appears in the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo", "BMW"]\n'
                'print(cars.count("BMW"))',
                '2',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The reverse() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The reverse() method reverses the order of the list.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.reverse()\n'
                'print(cars)',
                '["Volvo", "BMW", "Ford"]',
                context,
              ),
              SizedBox(height: 20.0),

              Text(
                'The sort() Method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The sort() method sorts the list in ascending order by default.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),

              _buildCodeExample(
                'cars = ["Ford", "BMW", "Volvo"]\n'
                'cars.sort()\n'
                'print(cars)',
                '["BMW", "Ford", "Volvo"]',
                context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeExample(String code, String output, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            code,
            style: TextStyle(
              fontFamily: 'Courier New',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          if (output.isNotEmpty)
            ElevatedButton(
              onPressed: () {
                _showOutput(context, output);
              },
              child: Text('Try it Yourself'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
        ],
      ),
    );
  }

  void _showOutput(BuildContext context, String output) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Output"),
          content: Text(output),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


