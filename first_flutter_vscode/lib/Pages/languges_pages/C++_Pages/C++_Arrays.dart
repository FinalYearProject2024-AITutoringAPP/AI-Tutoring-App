import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Array_Pages/Array.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Array_Pages/Arrays_Loops.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Array_Pages/Get_Array_Size.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Array_Pages/Multidimensional_Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++_Pages/Array_Pages/Omit_Array_Size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CplusplusArraysPage());
}

class CplusplusArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C++ Arrays',
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
                'Arrays Topics',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Arrays', '', CplusplusArrayPage()),
              _buildTopic(context, 'Arrays and Loops', '', CplusplusArraysLoopsPage()),
              _buildTopic(context, 'Get Array Size', '', CplusplusGetArraySizePage()),
              _buildTopic(context, 'Omit Array Size', '', CplusplusOmitArraysSizePage()),
              _buildTopic(context, 'Multidimensional Arrays', '', CplusplusMultidimensionalArraysPage()),
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
