import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/File_I_O_Pages/Create_Files.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/File_I_O_Pages/Read_Files.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/File_I_O_Pages/Write_To_Files.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CFilePage());
}

class CFilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C File I/O',
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
                'C File I/O Topics',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Create Files', 'Learn how to create files in C.', CProgrammingCreateFilesPage()),
              _buildTopic(context, 'Write To Files', 'Learn how to write to files in C.', CProgrammingWriteToFilesPage()),
              _buildTopic(context, 'Read Files', 'Learn how to read from files in C.', CProgrammingReadFilesPage()),
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
