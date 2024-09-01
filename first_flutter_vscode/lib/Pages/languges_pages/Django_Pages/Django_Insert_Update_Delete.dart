import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Insert_Update_Delete_Pages/Delete_Data.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Insert_Update_Delete_Pages/Insert_Data.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Insert_Update_Delete_Pages/Update_Data.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django_Pages/Insert_Update_Delete_Pages/Update_Model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DjangoInsertUpdateDeleteDataPage());
}

class DjangoInsertUpdateDeleteDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Insert, Update and Delete Data',
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
                'Django Insert, Update and Delete Data Topics',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(
                  context, 'Insert Data', '', DjangoInsertDataPage()),
              _buildTopic(
                  context, 'Update Data', '', DjangoUpdateDataPage()),
              _buildTopic(
                  context, 'Delete Data', '', DjangoDeleteDataPage()),
              _buildTopic(
                  context, 'Update Model', '', DjangoUpdateModelPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(
      BuildContext context, String name, String description, Widget nextPage) {
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
