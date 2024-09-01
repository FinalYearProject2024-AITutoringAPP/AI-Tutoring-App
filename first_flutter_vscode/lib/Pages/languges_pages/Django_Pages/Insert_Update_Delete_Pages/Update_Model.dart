import 'package:flutter/material.dart';

class DjangoUpdateModelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Update Model',
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
                'Update a Model in Django',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Updating an Object'),
              _buildContentText(
                  'To update a model, retrieve the object you want to update, make changes to its fields, and call the save() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Retrieve the record you want to update
member = Member.objects.get(id=1)

# Update field values
member.firstname = "Jonathan"
member.save()'''),
              _buildContentText(
                  'This will update the firstname of the member with ID 1 to "Jonathan".'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Using the update() Method'),
              _buildContentText(
                  'Alternatively, you can use the update() method to update multiple records at once. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Update firstname to "Jonathan" where firstname is "John"
Member.objects.filter(firstname='John').update(firstname='Jonathan')'''),
              _buildContentText(
                  'This will update the firstname of all members where firstname is "John" to "Jonathan".'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Handling Errors'),
              _buildContentText(
                  'Be careful when updating records. Ensure that you are updating the correct records to avoid accidental data loss.'),
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
