import 'package:flutter/material.dart';

void main() {
  runApp(DjangoTagsPage());
}

class DjangoTagsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Template Tags',
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
                'Django Template Tags',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Django template tags are used to perform various operations in templates. Tags are surrounded by {% and %}.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Common Tags',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'Below are some common template tags:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                '{% comment %}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'The {% comment %} tag is used to add comments in your templates. The comment block will be ignored when the template is rendered.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% comment %}
This is a comment
{% endcomment %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                '{% for %}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'The {% for %} tag is used to loop over a sequence such as a list.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% for item in list %}
    {{ item }}
{% endfor %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                '{% if %}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'The {% if %} tag is used to perform conditional evaluations. It works similarly to an if statement in Python.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% if user.is_authenticated %}
    <p>Welcome, {{ user.username }}.</p>
{% else %}
    <p>Please log in.</p>
{% endif %}
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'These are just a few examples of the many tags available in Django templates.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Using Template Tags',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'Template tags can be used to implement loops, conditions, and other logic directly within your HTML templates.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Custom Tags',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Text(
                'You can also create custom tags to perform more complex operations specific to your application.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
# In your_app/templatetags/custom_tags.py
from django import template

register = template.Library()

@register.simple_tag
def my_tag(value):
    return value * 2
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'This custom tag can then be used in your template like this:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% load custom_tags %}

<p>{{ my_tag(5) }}</p>  <!-- Output: 10 -->
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Using custom tags allows you to extend the functionality of your templates, making them more powerful and reusable.',
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
