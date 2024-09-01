import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Synthax_Pages/Comment.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Synthax_Pages/For_Loop.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Synthax_Pages/IfElse.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Synthax_Pages/Tags.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Synthax_Pages/Variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DjangoSynthaxPage());
}

class DjangoSynthaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Syntax',
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
                'Django Syntax Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Django Variables', 'Learn about Django template variables', DjangoVariablesPage()),
              _buildTopic(context, 'Django Tags', 'Understand Django template tags', DjangoTagsPage()),
              _buildTopic(context, 'Django If...Else', 'Conditional statements in Django templates', DjangoIfElsePage()),
              _buildTopic(context, 'Django For Loop', 'Looping through data in Django templates', DjangoForLoopPage()),
              _buildTopic(context, 'Django Comment', 'Using comments in Django templates', DjangoCommentPage()),
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
