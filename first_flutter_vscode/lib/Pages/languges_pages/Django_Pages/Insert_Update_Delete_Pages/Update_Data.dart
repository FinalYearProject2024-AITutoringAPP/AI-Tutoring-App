import 'package:flutter/material.dart';

class DjangoUpdateDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Update Data',
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
                'Update Data in Django',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Updating Data'),
              _buildContentText(
                  'To update a record in Django, you can retrieve the record, change the values, and then call the save() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Retrieve the record you want to update
member = Member.objects.get(id=1)

# Update the record
member.firstname = 'Jane'
member.save()'''),
              _buildContentText(
                  'This will update the firstname of the member with ID 1 to "Jane".'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Updating Multiple Records'),
              _buildContentText(
                  'To update multiple records at once, you can use the update() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Update the lastname of all members
Member.objects.all().update(lastname='Doe')'''),
              _buildContentText(
                  'This will set the lastname of all members to "Doe".'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Filtering Updates'),
              _buildContentText(
                  'You can also filter the records before updating them. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Update the lastname of members where firstname is 'John'
Member.objects.filter(firstname='John').update(lastname='Doe')'''),
              _buildContentText(
                  'This will set the lastname to "Doe" for all members whose firstname is "John".'),
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
