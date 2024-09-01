import 'package:flutter/material.dart';

void main() {
  runApp(HTMLColorcssLinksImagesPage());
}

class HTMLColorcssLinksImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'HTML Colors, HTML CSS, Links and Images ',
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
                'HTML Colors, HTML CSS, Links and Images Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Colors', '',),
              _buildTopic(context, 'Links', '', ),
              _buildTopic(context, 'Link Colors', '', ),
              _buildTopic(context, 'Link Bookmarks', '', ),
              _buildTopic(context, 'Images', '', ),
              _buildTopic(context, 'Images Map', '', ),
              _buildTopic(context, 'Background Images', '', ),
              _buildTopic(context, 'The Picture Element', '', ),
              
              
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