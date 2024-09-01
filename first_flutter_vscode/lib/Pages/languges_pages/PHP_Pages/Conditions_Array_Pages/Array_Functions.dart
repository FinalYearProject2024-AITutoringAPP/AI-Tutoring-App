import 'package:flutter/material.dart';

void main() {
  runApp(PHPArrayFunctionsPage());
}

class PHPArrayFunctionsPage extends StatelessWidget {
  get values => null;
  
  get array => null;
  
  get array1 => null;
  
  get merged_array => null;
  
  get array2 => null;
  
  get sliced_array => null;
  
  get keys => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Array Functions',
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
                'PHP Array Functions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Overview
              _buildSection(
                context,
                'Overview',
                'PHP provides a wide range of functions for working with arrays. These functions can be used to manipulate, sort, search, and retrieve data from arrays.',
                '',
              ),

              SizedBox(height: 20.0),

              // array() Function
              _buildSection(
                context,
                'array() Function',
                'The `array()` function is used to create an array in PHP.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // count() Function
              _buildSection(
                context,
                'count() Function',
                'The `count()` function returns the number of elements in an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
echo "Number of elements: " . count($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // sort() Function
              _buildSection(
                context,
                'sort() Function',
                'The `sort()` function sorts an array in ascending order.',
                '''
<?php
$array = array(3, 1, 4, 1, 5);
sort($array);
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // rsort() Function
              _buildSection(
                context,
                'rsort() Function',
                'The `rsort()` function sorts an array in descending order.',
                '''
<?php
$array = array(3, 1, 4, 1, 5);
rsort($array);
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_merge() Function
              _buildSection(
                context,
                'array_merge() Function',
                'The `array_merge()` function merges one or more arrays into one array.',
                '''
<?php
$array1 = array("Apple", "Banana");
$array2 = array("Cherry", "Date");
$merged_array = array_merge($array1, $array2);
print_r($merged_array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_push() Function
              _buildSection(
                context,
                'array_push() Function',
                'The `array_push()` function adds one or more elements to the end of an array.',
                '''
<?php
$array = array("Apple", "Banana");
array_push($array, "Cherry", "Date");
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_pop() Function
              _buildSection(
                context,
                'array_pop() Function',
                'The `array_pop()` function removes the last element from an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
array_pop($array);
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_shift() Function
              _buildSection(
                context,
                'array_shift() Function',
                'The `array_shift()` function removes the first element from an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
array_shift($array);
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_unshift() Function
              _buildSection(
                context,
                'array_unshift() Function',
                'The `array_unshift()` function adds one or more elements to the beginning of an array.',
                '''
<?php
$array = array("Banana", "Cherry");
array_unshift($array, "Apple");
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // in_array() Function
              _buildSection(
                context,
                'in_array() Function',
                'The `in_array()` function checks if a value exists in an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
if (in_array("Banana", $array)) {
    echo "Banana is in the array.";
} else {
    echo "Banana is not in the array.";
}
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_search() Function
              _buildSection(
                context,
                'array_search() Function',
                'The `array_search()` function searches an array for a value and returns the key.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry");
$key = array_search("Cherry", $array);
echo "Cherry is at index: " . $key;
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_slice() Function
              _buildSection(
                context,
                'array_slice() Function',
                'The `array_slice()` function extracts a portion of an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry", "Date", "Elderberry");
$sliced_array = array_slice($array, 1, 3);
print_r($sliced_array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_splice() Function
              _buildSection(
                context,
                'array_splice() Function',
                'The `array_splice()` function removes and/or replaces elements of an array.',
                '''
<?php
$array = array("Apple", "Banana", "Cherry", "Date");
array_splice($array, 2, 1, "Blueberry");
print_r($array);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_keys() Function
              _buildSection(
                context,
                'array_keys() Function',
                'The `array_keys()` function returns all the keys of an array.',
                '''
<?php
$array = array("a" => "Apple", "b" => "Banana", "c" => "Cherry");
$keys = array_keys($array);
print_r($keys);
?>
                ''',
              ),

              SizedBox(height: 20.0),

              // array_values() Function
              _buildSection(
                context,
                'array_values() Function',
                'The `array_values()` function returns all the values of an array.',
                '''
<?php
$array = array("a" => "Apple", "b" => "Banana", "c" => "Cherry");
$values = array_values($array);
print_r($values);
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
