import 'package:flutter/material.dart';

void main() {
  runApp(DjangoVariablesPage());
}

class DjangoVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Template Variables',
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
                'Django Template Variables',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Django templates use variables to represent dynamic content in the HTML.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Creating Variables',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'In a Django template, variables are surrounded by double curly braces: {{ }}.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'Example:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% for p in persons %}
    <p>{{ p.firstname }} {{ p.lastname }}</p>
{% endfor %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'This example will loop through the "persons" list and print the first name and last name of each person.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Accessing Variables',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'You can access variables passed from views in your Django template:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
<html>
<body>
    <h1>{{ title }}</h1>
    <p>{{ description }}</p>
</body>
</html>
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'This example assumes that the "title" and "description" variables were passed from the view to the template.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Using Filters',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'You can use filters to modify variables. Filters are added after a variable, separated by a pipe (|) character:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{{ value|length }}
{{ name|lower }}
{{ age|add:"5" }}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'These examples use Django filters to modify variables before they are displayed.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
