import 'package:flutter/material.dart';

void main() {
  runApp(CSSBackgroundsBordersColorsPage());
}

class CSSBackgroundsBordersColorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Backgrounds, Borders and Colors ',
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
                'C Backgrounds, Borders and Colors Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Background Color', '',),
              _buildTopic(context, 'Background Image', '', ),
              _buildTopic(context, 'Background Repeat', '', ),
              _buildTopic(context, 'Background', '', ),
              _buildTopic(context, 'Attachment', '', ),
               _buildTopic(context, 'Border Width', '', ),
                _buildTopic(context, 'Border Color', '', ),
                 _buildTopic(context, 'Border Sides', '', ),
                  _buildTopic(context, 'Rounded Borders', '', ),
                   _buildTopic(context, 'Margins', '', ),
                    _buildTopic(context, 'Colors', '', ),
                     _buildTopic(context, 'RGB', '', ),
                      _buildTopic(context, 'HEX', '', ),
                       _buildTopic(context, 'HSL', '', ),
              
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