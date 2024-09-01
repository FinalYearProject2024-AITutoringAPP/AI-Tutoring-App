import 'package:flutter/material.dart';

class DjangoIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction to Django',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('What is Django?'),
          _buildParagraph(
              'Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. It was created by a team of developers to simplify the process of building web applications. Django focuses on automating as much as possible to save developers time.'),
          _buildParagraph(
              'Django is named after the jazz guitarist Django Reinhardt. The framework follows the "batteries-included" philosophy, meaning it comes with many features built-in, rather than relying on external libraries.'),
          
          _buildHeader('Why Use Django?'),
          _buildParagraph(
              'Django is used for developing web applications quickly and efficiently. Here are some reasons why Django is a popular choice:'),
          _buildSubHeader('1. Reusability'),
          _buildParagraph(
              'Django promotes the reusability of code. It comes with a built-in admin interface that allows developers to manage data in their applications easily.'),
          _buildSubHeader('2. Scalability'),
          _buildParagraph(
              'Django is designed to scale with your application. It is used by some of the largest websites in the world, including Instagram and Pinterest.'),
          _buildSubHeader('3. Security'),
          _buildParagraph(
              'Django includes several built-in security features to protect your application from common vulnerabilities like SQL injection and cross-site scripting.'),
          _buildSubHeader('4. Versatility'),
          _buildParagraph(
              'Django is versatile and can be used for a wide range of web applications, from content management systems to social networks.'),
          
          _buildHeader('Django Architecture'),
          _buildParagraph(
              'Django follows the Model-View-Template (MVT) architectural pattern, which is similar to the Model-View-Controller (MVC) pattern. Here’s a brief overview of each component:'),
          _buildSubHeader('1. Model'),
          _buildParagraph(
              'The Model represents the data of the application. It defines the structure of the data and how it interacts with the database. In Django, models are defined using Python classes.'),
          _buildCodeBlock('''from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    published_date = models.DateField()'''),
          
          _buildSubHeader('2. View'),
          _buildParagraph(
              'The View is responsible for handling user requests and returning responses. It processes the data from the Model and sends it to the Template. Views are implemented as Python functions or classes in Django.'),
          _buildCodeBlock('''from django.shortcuts import render

def index(request):
    return render(request, 'index.html', {'message': 'Hello, Django!'})'''),
          
          _buildSubHeader('3. Template'),
          _buildParagraph(
              'The Template is responsible for presenting data to the user. It defines the structure and layout of the HTML pages. Django uses its own templating language to allow dynamic content rendering.'),
          _buildCodeBlock('''<!DOCTYPE html>
<html>
<head>
    <title>Django Template</title>
</head>
<body>
    <h1>{{ message }}</h1>
</body>
</html>'''),
          
          _buildHeader('Django Installation'),
          _buildParagraph(
              'To get started with Django, you need to install it using pip, the Python package manager. Here’s how you can install Django:'),
          _buildCodeBlock('pip install django'),
          
          _buildHeader('Creating a Django Project'),
          _buildParagraph(
              'Once Django is installed, you can create a new project using the following command:'),
          _buildCodeBlock('django-admin startproject myproject'),
          _buildParagraph(
              'This command creates a new directory called `myproject` with the basic structure of a Django project.'),
          
          _buildHeader('Starting the Development Server'),
          _buildParagraph(
              'Navigate to your project directory and start the development server using the following command:'),
          _buildCodeBlock('cd myproject\npython manage.py runserver'),
          _buildParagraph(
              'You can then access your project in your web browser at http://127.0.0.1:8000/'),
          
          _buildHeader('Creating a Django App'),
          _buildParagraph(
              'In Django, an application is a web application that does something, such as a blog or a forum. You can create an app within your project with the following command:'),
          _buildCodeBlock('python manage.py startapp myapp'),
          
          _buildHeader('Django Admin Interface'),
          _buildParagraph(
              'Django includes a powerful admin interface that allows you to manage your application’s data. You can access the admin interface at http://127.0.0.1:8000/admin/ after creating a superuser with the command:'),
          _buildCodeBlock('python manage.py createsuperuser'),
          
          _buildHeader('Django Documentation'),
          _buildParagraph(
              'For more detailed information and advanced topics, refer to the official Django documentation at https://docs.djangoproject.com/. The documentation provides comprehensive guides, tutorials, and reference material.'),
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }

  Widget _buildSubHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.cyanAccent,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black54,
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontFamily: 'Courier',
          fontSize: 16.0,
        ),
      ),
    );
  }
}
