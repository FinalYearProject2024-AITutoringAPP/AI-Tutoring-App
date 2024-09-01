import 'package:flutter/material.dart';

class DjangoSettingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting Up Django',
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
          _buildHeader('Setting Up Your Django Development Environment'),
          
          _buildHeader('Creating a Virtual Environment'),
          _buildParagraph(
              'A virtual environment is an isolated environment in which you can install packages independently from other projects. Here’s how to create and activate a virtual environment:'),
          _buildCodeBlock('''# Create a virtual environment
python -m venv myenv

# Activate the virtual environment
# On Windows
myenv\\Scripts\\activate

# On macOS and Linux
source myenv/bin/activate'''),
          _buildParagraph(
              'After activation, your command prompt will show the name of your virtual environment. All packages you install using pip will now be contained within this virtual environment.'),
          
          _buildHeader('Installing Django'),
          _buildParagraph(
              'With the virtual environment activated, you can install Django using pip. This will ensure that Django is installed only within your virtual environment:'),
          _buildCodeBlock('pip install django'),
          _buildParagraph(
              'Verify the installation by checking the Django version:'),
          _buildCodeBlock('django-admin --version'),
          _buildParagraph(
              'To check Django’s installed location, use the command:'),
          _buildCodeBlock('''python -m django --version
django-admin --version'''),
          
          _buildHeader('Creating a Django Project'),
          _buildParagraph(
              'To start a new Django project, use the following command. Replace `myproject` with the name of your project:'),
          _buildCodeBlock('django-admin startproject myproject'),
          _buildParagraph(
              'This command creates a new directory called `myproject` with the following structure:'),
          _buildCodeBlock('''myproject/
    manage.py
    myproject/
        __init__.py
        settings.py
        urls.py
        wsgi.py'''),
          _buildParagraph(
              'You can now navigate into your project directory with:'),
          _buildCodeBlock('cd myproject'),
          
          _buildHeader('Creating a Django App'),
          _buildParagraph(
              'A Django project consists of one or more apps. An app is a web application that does something, like a blog or a forum. To create an app within your project, use the following command:'),
          _buildCodeBlock('python manage.py startapp myapp'),
          _buildParagraph(
              'This command creates a new directory called `myapp` with the following structure:'),
          _buildCodeBlock('''myapp/
    __init__.py
    admin.py
    apps.py
    models.py
    tests.py
    views.py'''),
          _buildParagraph(
              'After creating your app, add it to the `INSTALLED_APPS` list in the `settings.py` file of your project to include it in your Django project. This tells Django that your app is part of the project.'),
          _buildCodeBlock('''# In myproject/settings.py
INSTALLED_APPS = [
    ...
    'myapp',
]'''),
          _buildParagraph(
              'To ensure your app is correctly set up, run the following command to check for any errors in your project setup:'),
          _buildCodeBlock('python manage.py check'),
          
          _buildHeader('Starting the Development Server'),
          _buildParagraph(
              'To see your project in action, you can start the development server with the following command:'),
          _buildCodeBlock('python manage.py runserver'),
          _buildParagraph(
              'You can then access your project at http://127.0.0.1:8000/ in your web browser.'),
          
          _buildHeader('Creating a Superuser'),
          _buildParagraph(
              'To access the Django admin interface, you need to create a superuser account:'),
          _buildCodeBlock('python manage.py createsuperuser'),
          _buildParagraph(
              'Follow the prompts to enter your username, email, and password. After creating the superuser, you can log in to the admin interface at http://127.0.0.1:8000/admin/.'),
          
          _buildHeader('Configuring Database'),
          _buildParagraph(
              'Django uses SQLite as the default database, but you can configure other databases such as PostgreSQL, MySQL, or Oracle. Edit the `DATABASES` setting in `settings.py` to configure your preferred database.'),
          _buildCodeBlock('''# Example for PostgreSQL
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'mydatabase',
        'USER': 'mydatabaseuser',
        'PASSWORD': 'mypassword',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}'''),
          
          _buildHeader('Migrating Database Changes'),
          _buildParagraph(
              'When you make changes to your models or database schema, you need to apply these changes to the database using migrations. Run the following commands:'),
          _buildCodeBlock('''# Create migration files
python manage.py makemigrations

# Apply migrations to the database
python manage.py migrate'''),
          
          _buildHeader('Next Steps'),
          _buildParagraph(
              'From here, you can start building your web application by defining models, creating views, and setting up URLs. For more detailed instructions and tutorials, check out the official Django documentation at https://docs.djangoproject.com/.'),
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
