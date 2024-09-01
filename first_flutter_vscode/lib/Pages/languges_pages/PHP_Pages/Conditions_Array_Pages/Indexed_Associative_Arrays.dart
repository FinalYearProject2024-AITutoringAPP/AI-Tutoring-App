import 'package:flutter/material.dart';

void main() {
  runApp(PHPIndexedAssociativeArraysPage());
}

class PHPIndexedAssociativeArraysPage extends StatelessWidget {
  get people => null;
  
  get fruits => null;
  
  get ages => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Indexed and Associative Arrays',
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
                'PHP Indexed and Associative Arrays',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Indexed Arrays
              _buildSection(
                context,
                'Indexed Arrays',
                'Indexed arrays are arrays with numeric indexes. The indexes are assigned automatically, starting from 0.',
                '''
<?php
// Indexed Array
$fruits = array("Apple", "Banana", "Cherry");
echo $fruits[0]; // Outputs "Apple"
echo $fruits[1]; // Outputs "Banana"
echo $fruits[2]; // Outputs "Cherry"
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
// Associative Array
$ages = array("Peter" => 35, "Ben" => 37, "Joe" => 43);
echo $ages["Peter"]; // Outputs "35"
echo $ages["Ben"]; // Outputs "37"
echo $ages["Joe"]; // Outputs "43"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Combining Indexed and Associative Arrays
              _buildSection(
                context,
                'Combining Indexed and Associative Arrays',
                'You can use both indexed and associative arrays in the same array structure.',
                '''
<?php
// Mixed Array
$people = array(
    "people" => array("John", "Jane", "Joe"),
    "ages" => array("John" => 30, "Jane" => 25, "Joe" => 35)
);
echo $people["people"][0]; // Outputs "John"
echo $people["ages"]["Jane"]; // Outputs "25"
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
