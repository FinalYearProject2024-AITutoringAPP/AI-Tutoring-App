import 'package:flutter/material.dart';

void main() {
  runApp(PHPAccessUpdateAddRemoveArraysPage());
}

class PHPAccessUpdateAddRemoveArraysPage extends StatelessWidget {
  get colors => null;
  
  get ages => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Access, Update, Add, Remove Arrays',
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
                'Access, Update, Add, and Remove Arrays in PHP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Accessing Arrays
              _buildSection(
                context,
                'Accessing Arrays',
                'You can access array elements using their index or key. Indexed arrays use numeric indexes, and associative arrays use named keys.',
                '''
<?php
// Indexed Array
$colors = ["Red", "Green", "Blue"];
echo $colors[0]; // Outputs "Red"
echo $colors[1]; // Outputs "Green"

// Associative Array
$ages = ["Peter" => 35, "Ben" => 37];
echo $ages["Peter"]; // Outputs "35"
echo $ages["Ben"]; // Outputs "37"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Updating Arrays
              _buildSection(
                context,
                'Updating Arrays',
                'You can update array elements by accessing them using their index or key and assigning a new value.',
                '''
<?php
// Updating Indexed Array
$colors = ["Red", "Green", "Blue"];
$colors[1] = "Yellow";
echo $colors[1]; // Outputs "Yellow"

// Updating Associative Array
$ages = ["Peter" => 35, "Ben" => 37];
$ages["Peter"] = 36;
echo $ages["Peter"]; // Outputs "36"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Adding to Arrays
              _buildSection(
                context,
                'Adding to Arrays',
                'You can add new elements to an array by specifying the index or key. For indexed arrays, use the next available numeric index. For associative arrays, use a new key.',
                '''
<?php
// Adding to Indexed Array
$colors = ["Red", "Green"];
$colors[] = "Blue"; // Adds "Blue" to the end
echo $colors[2]; // Outputs "Blue"

// Adding to Associative Array
$ages = ["Peter" => 35];
$ages["Ben"] = 37; // Adds new key-value pair
echo $ages["Ben"]; // Outputs "37"
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // Removing from Arrays
              _buildSection(
                context,
                'Removing from Arrays',
                'You can remove elements from an array using functions like `unset()` for indexed and associative arrays.',
                '''
<?php
// Removing from Indexed Array
$colors = ["Red", "Green", "Blue"];
unset($colors[1]); // Removes "Green"
print_r($colors); // Outputs Array ( [0] => Red [2] => Blue )

// Removing from Associative Array
$ages = ["Peter" => 35, "Ben" => 37];
unset($ages["Ben"]); // Removes "Ben"
print_r($ages); // Outputs Array ( [Peter] => 35 )
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
