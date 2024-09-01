import 'package:flutter/material.dart';

void main() {
  runApp(PHPCreateArraysPage());
}

class PHPCreateArraysPage extends StatelessWidget {
  get contacts => null;
  
  get colors => null;
  
  get ages => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Create Arrays',
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
                'Creating Arrays in PHP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Indexed Arrays
              _buildSection(
                context,
                'Indexed Arrays',
                'Indexed arrays use numeric indexes. You can create an indexed array in two ways: using the `array()` function or shorthand syntax.',
                '''
<?php
// Indexed Array - Old Way
$colors = array("Red", "Green", "Blue");
echo $colors[0]; // Outputs "Red"
echo $colors[1]; // Outputs "Green"
echo $colors[2]; // Outputs "Blue"

// Indexed Array - New Way (PHP 5.4+)
$colors = ["Red", "Green", "Blue"];
echo $colors[0]; // Outputs "Red"
echo $colors[1]; // Outputs "Green"
echo $colors[2]; // Outputs "Blue"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Associative Arrays
              _buildSection(
                context,
                'Associative Arrays',
                'Associative arrays use named keys that you assign to them. You can create an associative array using the `array()` function or shorthand syntax.',
                '''
<?php
// Associative Array - Old Way
$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);
echo $ages["Peter"]; // Outputs "35"
echo $ages["Ben"]; // Outputs "37"
echo $ages["Joe"]; // Outputs "43"

// Associative Array - New Way (PHP 5.4+)
$ages = ["Peter" => 35, "Ben" => 37, "Joe" => 43];
echo $ages["Peter"]; // Outputs "35"
echo $ages["Ben"]; // Outputs "37"
echo $ages["Joe"]; // Outputs "43"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Multidimensional Arrays
              _buildSection(
                context,
                'Multidimensional Arrays',
                'Multidimensional arrays contain one or more arrays. You can create multidimensional arrays using nested array syntax.',
                '''
<?php
// Multidimensional Array
$contacts = array(
    "family" => array("John", "Jane"),
    "friends" => array("Paul", "Anna"),
    "colleagues" => array("Tom", "Jerry")
);
echo $contacts["family"][0]; // Outputs "John"
echo $contacts["friends"][1]; // Outputs "Anna"
echo $contacts["colleagues"][1]; // Outputs "Jerry"
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
