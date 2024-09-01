import 'package:flutter/material.dart';

class DjangoDeleteDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Delete Data',
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
                'Delete Data in Django',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Deleting Data'),
              _buildContentText(
                  'To delete a record in Django, retrieve the record, then call the delete() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Retrieve the record you want to delete
member = Member.objects.get(id=1)

# Delete the record
member.delete()'''),
              _buildContentText(
                  'This will delete the member with ID 1 from the database.'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Deleting Multiple Records'),
              _buildContentText(
                  'To delete multiple records at once, you can use the filter() method combined with delete(). Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Delete members where firstname is 'John'
Member.objects.filter(firstname='John').delete()'''),
              _buildContentText(
                  'This will delete all members with firstname "John".'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Confirming Deletion'),
              _buildContentText(
                  'It\'s important to be careful with delete operations. Always ensure you are deleting the correct records. Django does not ask for confirmation before deleting records.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildContentText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 12.0),
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Text(
        code,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Courier',
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
