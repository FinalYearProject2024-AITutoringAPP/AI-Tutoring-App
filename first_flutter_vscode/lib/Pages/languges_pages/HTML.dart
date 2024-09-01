import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Basic_Tags.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Colors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Div.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Editors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Forms.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Headings.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/HTML_Quotations_Comments.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML_Pages/Semantic_HTML.dart';

class HTMLPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Basics',
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
            context, // Pass context here
            'Introduction to HTML',
            'Learn about HTML, its history, and its purpose.',
            HTMLIntroductionPage(),
          ),
          _buildTopic(
            context,
            'HTML Editors',
            'Learn about HTML Editors',
            HTMLEditorsPage(),
          ),
          _buildTopic(
            context,
            'Basic Tags, Elements, and Attributes',
            'Understand basic HTML tags like <div>, <span>, and <a>.',
            HTMLBasicTagsElementsAttributesPage(),
          ),
          _buildTopic(
            context,
            'HTML Headings, Paragraphs, Styles, and Formatting',
            'Learn about HTML Headings, Paragraphs, Styles, and Formatting.',
            HTMLHeadingsPage(),
          ),
          _buildTopic(
            context,
            'Quotations and Comments',
            'Learn about HTML Quotations and Comments.',
            HTMLQuotationsCommentsPage(),
          ),
          _buildTopic(
            context,
            'Colors, HTML CSS, Links, and Images',
            'Learn about HTML Colors, CSS, Links, and Images.',
            HTMLColorcssLinksImagesPage(),
          ),
          _buildTopic(
            context,
            'Forms, Input, Tables, and Lists',
            'Learn about creating forms, input fields, tables, and lists in HTML.',
            HTMLFormsInputTablesListsPage(),
          ),
          _buildTopic(
            context,
            'HTML Div, id, and Classes',
            'Learn about HTML Div, id, and Classes.',
            HTMLDivIdClassesPage(),
          ),
          _buildTopic(
            context,
            'Semantic HTML',
            'Learn about semantic HTML and its importance for accessibility.',
            HTMLSemanticsPage(),
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

