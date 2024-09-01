import 'package:flutter/material.dart';

void main() {
  runApp(PHPMultidimensionalArraysPage());
}

class PHPMultidimensionalArraysPage extends StatelessWidget {
  get contact => null;
  
  get contacts => null;
  
  get value => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Multidimensional Arrays',
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
                'Multidimensional Arrays in PHP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Multidimensional Arrays Overview
              _buildSection(
                context,
                'Multidimensional Arrays Overview',
                'In PHP, multidimensional arrays are arrays that contain other arrays. These arrays can be used to store more complex data structures.',
                '''
Multidimensional arrays are arrays containing one or more arrays. The simplest form of a multidimensional array is a two-dimensional array.

Here is an example of how to create and use multidimensional arrays in PHP:

1. **Creating a Multidimensional Array**
2. **Accessing Array Elements**
3. **Looping through Multidimensional Arrays**
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Creating a Multidimensional Array
              _buildSection(
                context,
                'Creating a Multidimensional Array',
                'This example demonstrates how to create a two-dimensional array in PHP.',
                '''
<?php
// Create a Multidimensional Array
$contacts = [
    ["Name" => "John", "Email" => "john@example.com", "Phone" => "123456"],
    ["Name" => "Jane", "Email" => "jane@example.com", "Phone" => "654321"],
    ["Name" => "Doe", "Email" => "doe@example.com", "Phone" => "789012"]
];

// Print the Array
print_r($contacts);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Accessing Array Elements
              _buildSection(
                context,
                'Accessing Array Elements',
                'This example shows how to access elements within a multidimensional array.',
                '''
<?php
// Create a Multidimensional Array
$contacts = [
    ["Name" => "John", "Email" => "john@example.com", "Phone" => "123456"],
    ["Name" => "Jane", "Email" => "jane@example.com", "Phone" => "654321"],
    ["Name" => "Doe", "Email" => "doe@example.com", "Phone" => "789012"]
];

// Access Elements
echo "Name: " . $contacts[0]["Name"] . "<br>";
echo "Email: " . $contacts[1]["Email"] . "<br>";
echo "Phone: " . $contacts[2]["Phone"] . "<br>";
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Example: Looping through Multidimensional Arrays
              _buildSection(
                context,
                'Looping through Multidimensional Arrays',
                'This example demonstrates how to loop through a multidimensional array using a nested `foreach` loop.',
                '''
<?php
// Create a Multidimensional Array
$contacts = [
    ["Name" => "John", "Email" => "john@example.com", "Phone" => "123456"],
    ["Name" => "Jane", "Email" => "jane@example.com", "Phone" => "654321"],
    ["Name" => "Doe", "Email" => "doe@example.com", "Phone" => "789012"]
];

// Loop through the Array
foreach ($contacts as $contact) {
    foreach ($contact as $key => $value) {
        echo "$key: $value<br>";
    }
    echo "<hr>";
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
