import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/Array_Size.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/Multidimensional_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/Special_Characters.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/String_Functions.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Array_Strings_Pages/Strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CArraysStringsPage());
}

class CArraysStringsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Arrays and Strings',
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
                'C Arrays and Strings Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Arrays', '', CProgrammingArraysPage()),
              _buildTopic(context, 'Array Size', '', CProgrammingArraySizePage()),
              _buildTopic(context, 'Multidimensional Arrays', '', CProgrammingMultidimensionalArraysPage()),
              _buildTopic(context, 'Strings', '', CProgrammingStringsPage()),
              _buildTopic(context, 'Special Characters', '', CProgrammingSpecialCharactersPage()),
              _buildTopic(context, 'String Functions', '', CProgrammingStringFunctionsPage()),
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
