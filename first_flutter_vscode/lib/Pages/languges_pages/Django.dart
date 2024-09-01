import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Insert_Update_Delete.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Models_Urls.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Setting_up.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Django_Views_Templates.dart';

class DjangoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Django Basics',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: ListView(
        children: [
          _buildTopic(
            context,
            'Introduction to Django',
            'Learn about Django, its history, and its features.',
            DjangoIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Setting Up Django',
            'Understand how to set up a Django project and its environment.',
            DjangoSettingUpPage(),
          ),
          _buildTopic(
            context,
            'Models and URLs',
            'Learn about Django models and database interaction.',
            DjangoModelsURLspage(),
          ),
          _buildTopic(
            context,
            'Views and Templates',
            'Explore how to create views and templates in Django.',
            DjangoViewsTemplatesPage(),
          ),
          _buildTopic(
            context,
            'Django Insert Data, Update Data, Delete Data and Update Model',
            'Explore how to insert, update, and delete data in Django, as well as update models.',
            DjangoInsertUpdateDeleteDataPage(),
          ),
          _buildTopic(
            context,
            'Django Syntax',
            'Learn about syntax in Django.',
            DjangoSynthaxPage(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String title, String description, Widget page) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.blueGrey[800], // Set card color to a darker shade of blue-grey
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70), // Set subtitle text color to a lighter shade of white
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
