import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Backgrounds_Borders_Colors.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Box_Model.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Flexbox.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Grid_Layout.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Lists_Tables_Display.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Margins_Padding_Height_Width.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Max_Width.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Selectors_Properties.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Synthax.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS_Pages/CSS_Text_Fonts_Icons_Links.dart';
import 'package:flutter/material.dart';

class CSSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Basics',
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
            'Introduction to CSS',
            'Learn about CSS, its history, and its purpose.',
            CSSIntroductionPage(),
          ),
          _buildTopic(
            context,
            'CSS Syntax',
            'Learn about CSS syntax.',
            CSSSyntaxPage(),
          ),
          _buildTopic(
            context,
            'Selectors and Properties',
            'Understand CSS selectors and properties.',
            CSSSelectorsPage(),
          ),
          _buildTopic(
            context,
            'Backgrounds, Borders, and Colors',
            'Learn about CSS backgrounds, borders, and colors.',
            CSSBackgroundsBordersColorsPage(),
          ),
          _buildTopic(
            context,
            'Margins, Padding, and CSS Height/Width',
            'Learn about CSS margins, padding, and CSS height/width.',
            CSSMaginsPaddingDimensionsPage(),
          ),
          _buildTopic(
            context,
            'Box Model',
            'Learn about the CSS box model and how it affects layout.',
            CSSBoxModelPage(),
          ),
          _buildTopic(
            context,
            'CSS Text, Fonts, Icons, and Links',
            'Learn about CSS text, fonts, icons, and links.',
            CSSTextFontsIconsPage(),
          ),
          _buildTopic(
            context,
            'CSS Lists, Tables, and Display',
            'Learn about CSS lists, tables, and display.',
            CSSListsTablesDisplayPage(),
          ),
          _buildTopic(
            context,
            'Max-Width, Positioning, Inline-Block, and Text Alignment',
            'Learn about CSS max-width, positioning, inline-block, and text alignment.',
            CSSMaxWidthPage(),
          ),
          _buildTopic(
            context,
            'Flexbox',
            'Explore the Flexbox layout model in CSS.',
            CSSFlexboxPage(),
          ),
          _buildTopic(
            context,
            'Grid Layout',
            'Learn about CSS Grid Layout for complex designs.',
            CSSGridLayoutPage(),
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

