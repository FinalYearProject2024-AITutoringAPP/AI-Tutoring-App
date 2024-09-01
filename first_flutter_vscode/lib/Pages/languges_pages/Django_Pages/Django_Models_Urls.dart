import 'package:flutter/material.dart';

class DjangoModelsURLspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Django Models and URLs',
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
          _buildHeader('Django Models'),

          _buildParagraph(
              'Models are the single, definitive source of information about your data. They contain the essential fields and behaviors of the data you’re storing. Generally, each model maps to a single database table.'),
          
          _buildSubHeader('Creating a Model'),
          _buildParagraph(
              'To create a model, define a Python class within the `models.py` file of your app. Each class variable represents a database field in the model.'),
          _buildCodeBlock('''# Example of a simple model
from django.db import models

class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    birth_date = models.DateField()'''),

          _buildParagraph(
              'In this example, the `Person` model has three fields: `first_name`, `last_name`, and `birth_date`. Django provides a wide range of field types that you can use in your models.'),

          _buildSubHeader('Field Options'),
          _buildParagraph(
              'When defining fields, you can use various optional arguments to customize their behavior. For example, you can set `null=True` to allow a field to be empty or `default=value` to specify a default value.'),
          _buildCodeBlock('''class Person(models.Model):
    first_name = models.CharField(max_length=30, null=True, default='John')
    last_name = models.CharField(max_length=30)
    birth_date = models.DateField(null=True)'''),

          _buildSubHeader('Primary Key'),
          _buildParagraph(
              'By default, Django adds an `id` field to your model to serve as the primary key. If you want to use a different field as the primary key, set `primary_key=True` on that field.'),
          _buildCodeBlock('''class Person(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    birth_date = models.DateField()'''),

          _buildSubHeader('Running Migrations'),
          _buildParagraph(
              'Once you have defined your models, you need to run migrations to create the corresponding database tables. First, create migration files:'),
          _buildCodeBlock('python manage.py makemigrations'),

          _buildParagraph(
              'Then, apply the migrations to your database:'),
          _buildCodeBlock('python manage.py migrate'),

          _buildParagraph(
              'Django will create the necessary database tables based on your model definitions.'),

          _buildSubHeader('Accessing the Django Admin'),
          _buildParagraph(
              'To manage your models through the Django admin interface, register them in your app’s `admin.py` file:'),
          _buildCodeBlock('''from django.contrib import admin
from .models import Person

admin.site.register(Person)'''),

          _buildParagraph(
              'You can now add, edit, and delete instances of your model via the Django admin interface.'),

          _buildHeader('Django URLs'),

          _buildParagraph(
              'Django uses a URL dispatcher to map URLs to views. To define the URLs for your application, create a `urls.py` file in your app directory if it doesn’t exist already.'),

          _buildSubHeader('Mapping URLs to Views'),
          _buildParagraph(
              'In the `urls.py` file, you can map URLs to view functions or class-based views using the `path()` function:'),
          _buildCodeBlock('''from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('person/<int:id>/', views.person_detail, name='person_detail'),
]'''),

          _buildParagraph(
              'In this example, the `index` view is mapped to the root URL (`/`), and the `person_detail` view is mapped to URLs like `/person/1/`, where `1` is the `id` of a `Person` instance.'),

          _buildSubHeader('Including Other URL Configurations'),
          _buildParagraph(
              'You can include other URL configurations from different apps or modules using the `include()` function. This is useful for splitting your URL patterns across multiple files:'),
          _buildCodeBlock('''from django.urls import include, path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('myapp/', include('myapp.urls')),
]'''),

          _buildParagraph(
              'In this example, any URL starting with `/myapp/` will be handled by the URL patterns defined in `myapp.urls`.'),

          _buildSubHeader('Named URL Patterns'),
          _buildParagraph(
              'Django allows you to name your URL patterns, which makes it easier to refer to them elsewhere in your code (e.g., in templates or views). Use the `name` argument to assign a name to a URL pattern:'),
          _buildCodeBlock('''urlpatterns = [
    path('person/<int:id>/', views.person_detail, name='person_detail'),
]'''),

          _buildParagraph(
              'You can now refer to this URL pattern using its name instead of hardcoding the URL. For example, in a template:'),
          _buildCodeBlock('''<a href="{% url 'person_detail' id=person.id %}">View Details</a>'''),

          _buildHeader('Next Steps'),
          _buildParagraph(
              'From here, you can start creating views, templates, and forms that interact with your models. For more advanced topics, refer to the official Django documentation at https://docs.djangoproject.com/.'),
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
          color: Colors.cyan[200],
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
