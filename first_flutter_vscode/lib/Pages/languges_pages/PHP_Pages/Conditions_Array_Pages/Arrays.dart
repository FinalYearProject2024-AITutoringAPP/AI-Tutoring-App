import 'package:flutter/material.dart';

void main() {
  runApp(PHPArrayPage());
}

class PHPArrayPage extends StatelessWidget {
  get fruits => null;
  
  get ages => null;
  
  get contacts => null;
  
  get fruit => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Arrays',
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
                'PHP Arrays',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Introduction
              _buildSection(
                context,
                'Introduction',
                'In PHP, arrays are used to store multiple values in a single variable. PHP supports both indexed arrays, associative arrays, and multidimensional arrays.',
                '',
              ),

              SizedBox(height: 20.0),

              // Indexed Arrays
              _buildSection(
                context,
                'Indexed Arrays',
                'Indexed arrays are arrays with numeric indexes. The indexes are assigned automatically, starting from 0.',
                '''
<?php
$fruits = array("Apple", "Banana", "Cherry");
echo $fruits[0]; // Outputs "Apple"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Associative Arrays
              _buildSection(
                context,
                'Associative Arrays',
                'Associative arrays use named keys that you assign to them. This allows you to use meaningful names for array elements.',
                '''
<?php
$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);
echo $ages["Peter"]; // Outputs "35"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Multidimensional Arrays
              _buildSection(
                context,
                'Multidimensional Arrays',
                'Multidimensional arrays contain one or more arrays. They can be used to store data in a matrix-like format.',
                '''
<?php
$contacts = array(
    array("John", "Doe", "john@example.com"),
    array("Jane", "Doe", "jane@example.com"),
    array("Mary", "Smith", "mary@example.com")
);
echo $contacts[1][2]; // Outputs "jane@example.com"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Accessing Array Elements
              _buildSection(
                context,
                'Accessing Array Elements',
                'You can access array elements using their index or key. For indexed arrays, use the numeric index. For associative arrays, use the named key.',
                '''
<?php
$fruits = array("Apple", "Banana", "Cherry");
echo $fruits[1]; // Outputs "Banana"

$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);
echo $ages["Ben"]; // Outputs "37"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Modifying Arrays
              _buildSection(
                context,
                'Modifying Arrays',
                'You can add, modify, or delete elements in an array using various functions and syntax.',
                '''
<?php
$fruits = array("Apple", "Banana", "Cherry");
$fruits[1] = "Blueberry"; // Modify an element
array_push($fruits, "Date"); // Add an element
unset($fruits[0]); // Remove an element
print_r($fruits);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Looping Through Arrays
              _buildSection(
                context,
                'Looping Through Arrays',
                'You can use loops such as `foreach` to iterate over array elements.',
                '''
<?php
$fruits = array("Apple", "Banana", "Cherry");
foreach ($fruits as $fruit) {
    echo $fruit . "<br>";
}
?>
                ''',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String description, String code) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Code:',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.black,
            child: Text(
              code,
              style: TextStyle(
                color: Colors.greenAccent,
                fontFamily: 'Courier New',
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
