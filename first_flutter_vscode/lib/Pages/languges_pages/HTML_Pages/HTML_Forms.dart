import 'package:flutter/material.dart';

void main() {
  runApp(HTMLFormsInputTablesListsPage());
}

class HTMLFormsInputTablesListsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'HTML Forms, Input, Tables and Lists',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
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
                'HTML Forms, Input, Tables and Lists Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'HTML Forms', '',),
              _buildTopic(context, 'HTML Form Attributes', '', ),
              _buildTopic(context, 'HTML Form Elements', '', ),
              _buildTopic(context, 'HTML Input Types', '', ),
              _buildTopic(context, 'HTML Tables', '', ),
              _buildTopic(context, 'HTML Borders', '', ),
              _buildTopic(context, 'HTML Table Sizes', '', ),
              _buildTopic(context, 'HTML Table Headers', '', ),
              _buildTopic(context, 'Padding and Spacing', '', ),
              _buildTopic(context, 'Colspan and Rowspan', '', ),
              _buildTopic(context, 'HTML Table Styling', '', ),
              _buildTopic(context, 'Lists', '', ),
              _buildTopic(context, 'Unordered and Ordered Lists', '', ),
              
              
              
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