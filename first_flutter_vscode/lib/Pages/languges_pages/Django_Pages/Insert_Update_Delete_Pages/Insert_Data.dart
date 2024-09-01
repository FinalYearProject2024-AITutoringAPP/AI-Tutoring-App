import 'package:flutter/material.dart';

class DjangoInsertDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Insert Data',
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
                'Insert Data in Django',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              _buildSectionTitle('Inserting Data'),
              _buildContentText(
                  'To insert data into a Django model, you can use the save() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Create a new member instance
new_member = Member(firstname='John', lastname='Doe')

# Save the instance to the database
new_member.save()'''),
              _buildContentText(
                  'This will insert a new record in the database with the specified firstname and lastname.'),
              SizedBox(height: 20.0),
              _buildSectionTitle('The save() Method'),
              _buildContentText(
                  'The save() method is a method used to save an instance of a model to the database. '
                  'It inserts a new record if the instance is new, or updates the existing record if the instance has an ID.'),
              SizedBox(height: 20.0),
              _buildSectionTitle('Inserting Many Records'),
              _buildContentText(
                  'You can also insert multiple records at once using the bulk_create() method. Here is an example:'),
              _buildCodeSnippet(
                  '''from myapp.models import Member

# Create multiple Member instances
members = [
    Member(firstname='John', lastname='Doe'),
    Member(firstname='Jane', lastname='Smith'),
    Member(firstname='Emily', lastname='Johnson'),
]

# Save all instances to the database
Member.objects.bulk_create(members)'''),
              _buildContentText(
                  'This will insert three new records in the database.'),
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
