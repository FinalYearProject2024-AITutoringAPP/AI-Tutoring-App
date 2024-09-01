import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Access_Update_Add_Remove_Array.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Array_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/IfElse.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Indexed_Associative_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Loops.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Multidimensional_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Sorting_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Switch.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP_Pages/Conditions_Array_Pages/Create_Arrays.dart'; // Make sure to create this page
import 'package:flutter/material.dart';

void main() {
  runApp(PHPConditionsArraysPage());
}

class PHPConditionsArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Conditions and Arrays',
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
                'PHP Conditions and Arrays Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'If...Else...Elseif', '', PHPIfElseCombinedPage()),
              _buildTopic(context, 'Switch', '', PHP_Switch_Page()),
              _buildTopic(context, 'Loops', '', PHPLoopsPage()),
              _buildTopic(context, 'Arrays', '', PHPArrayPage()),
              _buildTopic(context, 'Indexed and Associative Arrays', '', PHPIndexedAssociativeArraysPage()),
              _buildTopic(context, 'Create Arrays', '', PHPCreateArraysPage()),
              _buildTopic(context, 'Access, Update, Add and Remove Array Items', '', PHPAccessUpdateAddRemoveArraysPage()),
              _buildTopic(context, 'Sorting Arrays', '', PHPSortingArraysPage()),
              _buildTopic(context, 'Multidimensional Arrays', '', PHPMultidimensionalArraysPage()),
              _buildTopic(context, 'Array Functions', '', PHPArrayFunctionsPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, String description, Widget nextPage) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
      ),
    );
  }
}
