import 'package:flutter/material.dart';

void main() {
  runApp(DjangoIfElsePage());
}

class DjangoIfElsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Template Tags: If/Else',
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
                'Django Template Tags: If/Else',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'The {% if %} template tag is used to output content based on a condition. If the condition evaluates to True, the content inside the {% if %} block is displayed. Otherwise, the content inside the {% else %} block is displayed, if provided.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Syntax',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% if condition %}
    <!-- Content to display if the condition is true -->
{% else %}
    <!-- Content to display if the condition is false -->
{% endif %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'Consider the following example where we check if a user is authenticated:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% if user.is_authenticated %}
    <p>Welcome, {{ user.username }}!</p>
{% else %}
    <p>Please log in.</p>
{% endif %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'In this example:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                '1. If the user is authenticated, the template will output "Welcome, [username]!".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '2. If the user is not authenticated, the template will output "Please log in."',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Using "Elif"',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'The {% elif %} tag can be used to check multiple conditions. It stands for "else if".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% if condition1 %}
    <!-- Content to display if condition1 is true -->
{% elif condition2 %}
    <!-- Content to display if condition2 is true -->
{% else %}
    <!-- Content to display if neither condition1 nor condition2 is true -->
{% endif %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Example with Elif',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% if user.is_superuser %}
    <p>Welcome, Admin!</p>
{% elif user.is_staff %}
    <p>Welcome, Staff member!</p>
{% else %}
    <p>Welcome, User!</p>
{% endif %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'In this example:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                '1. If the user is a superuser, the template will output "Welcome, Admin!".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '2. If the user is a staff member but not a superuser, the template will output "Welcome, Staff member!".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '3. If the user is neither a superuser nor a staff member, the template will output "Welcome, User!".',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Summary',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'The {% if %} tag is a fundamental part of Django templates that allows you to control the flow of your template\'s output based on conditions. By combining {% if %}, {% elif %}, and {% else %} tags, you can create complex conditional structures within your templates.',
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
