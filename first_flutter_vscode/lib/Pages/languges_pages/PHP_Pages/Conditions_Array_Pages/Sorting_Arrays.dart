import 'package:flutter/material.dart';

void main() {
  runApp(PHPSortingArraysPage());
}

class PHPSortingArraysPage extends StatelessWidget {
  get ages => null;
  
  get numbers => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Array Sorting',
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
                'Sorting Arrays in PHP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Array Sorting Overview
              _buildSection(
                context,
                'Array Sorting Overview',
                'PHP provides several functions to sort arrays in different ways. Below are examples of these functions.',
                '''
In PHP, you can sort arrays in various ways. Here are some common sorting functions:

1. `sort()`: Sorts an indexed array in ascending order.
2. `rsort()`: Sorts an indexed array in descending order.
3. `asort()`: Sorts an associative array in ascending order, according to the value.
4. `ksort()`: Sorts an associative array in ascending order, according to the key.
5. `arsort()`: Sorts an associative array in descending order, according to the value.
6. `krsort()`: Sorts an associative array in descending order, according to the key.
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Sort Indexed Array
              _buildSection(
                context,
                'Sort Indexed Array',
                'This example demonstrates how to sort an indexed array in ascending and descending order.',
                '''
<?php
// Indexed Array
$numbers = [4, 2, 8, 6, 3];

// Sort in Ascending Order
sort($numbers);
echo "Sorted in Ascending Order: ";
print_r($numbers); // Outputs Array ( [0] => 2 [1] => 3 [2] => 4 [3] => 6 [4] => 8 )

// Sort in Descending Order
rsort($numbers);
echo "Sorted in Descending Order: ";
print_r($numbers); // Outputs Array ( [0] => 8 [1] => 6 [2] => 4 [3] => 3 [4] => 2 )
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Sort Associative Array by Value
              _buildSection(
                context,
                'Sort Associative Array by Value',
                'This example demonstrates how to sort an associative array by its values in ascending and descending order.',
                '''
<?php
// Associative Array
$ages = ["Peter" => 35, "Ben" => 37, "Joe" => 43];

// Sort in Ascending Order
asort($ages);
echo "Sorted by Value in Ascending Order: ";
print_r($ages); // Outputs Array ( [Peter] => 35 [Ben] => 37 [Joe] => 43 )

// Sort in Descending Order
arsort($ages);
echo "Sorted by Value in Descending Order: ";
print_r($ages); // Outputs Array ( [Joe] => 43 [Ben] => 37 [Peter] => 35 )
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Sort Associative Array by Key
              _buildSection(
                context,
                'Sort Associative Array by Key',
                'This example demonstrates how to sort an associative array by its keys in ascending and descending order.',
                '''
<?php
// Associative Array
$ages = ["Peter" => 35, "Ben" => 37, "Joe" => 43];

// Sort by Key in Ascending Order
ksort($ages);
echo "Sorted by Key in Ascending Order: ";
print_r($ages); // Outputs Array ( [Ben] => 37 [Joe] => 43 [Peter] => 35 )

// Sort by Key in Descending Order
krsort($ages);
echo "Sorted by Key in Descending Order: ";
print_r($ages); // Outputs Array ( [Peter] => 35 [Joe] => 43 [Ben] => 37 )
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
