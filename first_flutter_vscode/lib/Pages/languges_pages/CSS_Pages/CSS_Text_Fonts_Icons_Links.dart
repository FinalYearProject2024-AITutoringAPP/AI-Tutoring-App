import 'package:flutter/material.dart';

void main() {
  runApp(CSSTextFontsIconsPage());
}

class CSSTextFontsIconsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CSS Text, Fonts and Icons ',
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
                'CSS Text, Fonts and Icons Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Text Color', '',),
              _buildTopic(context, 'Text Alignment', '', ),
              _buildTopic(context, 'Text Decoration', '', ),
              _buildTopic(context, 'Text Transformation', '', ),
              _buildTopic(context, 'Text Spacing', '', ),
               _buildTopic(context, 'Text Shadow', '', ),
                _buildTopic(context, 'Font Family', '', ),
                 _buildTopic(context, 'Font Web Safe', '', ),
                  _buildTopic(context, 'Font Fallbacks', '', ),
                   _buildTopic(context, 'Font Style', '', ),
                    _buildTopic(context, 'Font Size', '', ),
                     _buildTopic(context, 'Font Pairings', '', ),
                      _buildTopic(context, 'Font Icons', '', ),
              
              
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