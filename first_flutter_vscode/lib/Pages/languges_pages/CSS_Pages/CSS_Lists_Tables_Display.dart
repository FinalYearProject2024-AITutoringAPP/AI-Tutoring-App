import 'package:flutter/material.dart';

void main() {
  runApp(CSSListsTablesDisplayPage());
}

class CSSListsTablesDisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CSS Lists Tables and Display ',
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
                'CSS Lists Tables and Display Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Lists', '',),
              _buildTopic(context, 'Table Borders', '', ),
              _buildTopic(context, 'Table Size', '', ),
              _buildTopic(context, 'Table Alignment', '', ),
              _buildTopic(context, 'Table Style', '', ),
               _buildTopic(context, 'Table Responsive', '', ),
                _buildTopic(context, 'CSS Display', '', ),
               
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, String description, ) {
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
          /*Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );*/
        },
      ),
    );
  }
}