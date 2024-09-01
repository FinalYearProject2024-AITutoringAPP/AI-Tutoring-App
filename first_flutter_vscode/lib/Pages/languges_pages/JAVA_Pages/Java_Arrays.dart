import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Array_Pages/Arrays.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Array_Pages/Loop_Through_Array.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA_Pages/Array_Pages/Multidimensional_Arrays.dart';

void main() {
  runApp(JavaArraysPage());
}

class JavaArraysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JAVA Arrays',
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
                'Array Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              _buildTopic(context, 'Arrays', 'Introduction to Arrays in Java', JAVAArraysPage()),
              _buildTopic(context, 'Loop Through an Array', 'How to loop through arrays', JAVALoopThroughArrayPage()),
              _buildTopic(context, 'Multidimensional Arrays', 'Working with multidimensional arrays', JAVAMultidimensionalArraysPage()),
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
