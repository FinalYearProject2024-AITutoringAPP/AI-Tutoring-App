import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_Email.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_Events.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_File_System.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_Intro.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_Modules.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_NPM.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Node.JS_Pages/Nodejs_Upload_Files.dart';

class NodejsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js Basics',
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
            'Introduction to Node.js',
            'Learn about Node.js, its features, and its uses.',
            NodeJSIntroductionPage(),
          ),
          _buildTopic(
            context,
            'Node.js Modules',
            'Explore how to use and create modules in Node.js.',
            NodeJSModulesPage(),
          ),
          _buildTopic(
            context,
            'Node.js File System',
            'Understand how to work with the file system in Node.js.',
            NodeJSFileSystemPage(),
          ),
          _buildTopic(
            context,
            'Node.js NPM',
            'Learn about NPM and how to manage packages in Node.js.',
            NodeJSNPMPage(),
          ),
          _buildTopic(
            context,
            'Node.js Events',
            'Explore the event-driven architecture in Node.js.',
            NodeJSEventsPage(),
          ),
          _buildTopic(
            context,
            'Node.js Upload Files',
            'Learn how to handle file uploads in Node.js.',
            NodeJSUploadFilesPage(),
          ),
          _buildTopic(
            context,
            'Node.js Email',
            'Understand how to send emails using Node.js.',
            NodeJSEmailPage(),
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

