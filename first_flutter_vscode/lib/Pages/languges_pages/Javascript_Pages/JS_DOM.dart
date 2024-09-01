import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Animations.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/CSS.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Collections.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/DOM_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Document.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Elements.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Events.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Forms.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/HTML.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Methods.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Navigation.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Nodes.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascript_Pages/DOM_Pages/Nodes_Lists.dart';

void main() {
  runApp(JavascriptDOMPage());
}

class JavascriptDOMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'JS DOM Manipulation',
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
                'DOM Topics',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'DOM Introduction', '', JSDOMIntroductionPage()),
              _buildTopic(context, 'DOM Methods', '', JSDOMMethodsPage()),
              _buildTopic(context, 'DOM Document', '', JSDOMDocumentPage()),
              _buildTopic(context, 'DOM Elements', '', JSDOMElementsPage()),
              _buildTopic(context, 'DOM HTML', '', JSDOMHTMLPage()),
              _buildTopic(context, 'DOM Forms', '', JSDOMFormsPage()),
              _buildTopic(context, 'DOM CSS', '', JSDOMCSSPage()),
              _buildTopic(context, 'DOM Animations', '', JSDOMAnimationsPage()),
              _buildTopic(context, 'DOM Events', '', JSDOMEventsPage()),
              _buildTopic(context, 'DOM Navigation', '', JSDOMNavigationPage()),
              _buildTopic(context, 'DOM Nodes', '', JSDOMNodesPage()),
              _buildTopic(context, 'DOM Collections', '', JSDOMCollectionsPage()),
              _buildTopic(context, 'DOM Node Lists', '', JSDOMNodeListPage()),
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
