import 'package:flutter/material.dart';

class DjangoViewsTemplatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Django Views and Templates',
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
          _buildHeader('Django Views'),

          _buildParagraph(
              'A view function, or view for short, is a Python function that receives a web request and returns a web response. This response can be HTML content, a redirect, a 404 error, an XML document, an image, or a file. Django views are an essential part of how your application responds to web requests.'),
          
          _buildSubHeader('Creating a View'),
          _buildParagraph(
              'To create a view in Django, you define a function in your `views.py` file. This function takes at least one argument, typically `request`, and returns a response.'),
          _buildCodeBlock('''# Example of a simple view
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world. You're at the index page.")'''),

          _buildParagraph(
              'In this example, the `index` view returns a simple HTTP response with the text "Hello, world."'),

          _buildSubHeader('Rendering Templates in Views'),
          _buildParagraph(
              'Instead of returning a string directly, views often render HTML templates. You can use the `render` function to combine a template with a context dictionary to generate a complete HTML page.'),
          _buildCodeBlock('''# Rendering a template
from django.shortcuts import render

def index(request):
    return render(request, 'index.html', {'message': 'Hello, world.'})'''),

          _buildParagraph(
              'In this example, the `index` view renders the `index.html` template and passes a context dictionary containing the `message` variable.'),

          _buildSubHeader('Redirecting to Another URL'),
          _buildParagraph(
              'You can also redirect users to a different URL using the `HttpResponseRedirect` or the `redirect` function.'),
          _buildCodeBlock('''from django.shortcuts import redirect

def my_view(request):
    return redirect('/another-url/')'''),

          _buildSubHeader('404 Error Handling'),
          _buildParagraph(
              'If you want to return a 404 error, use the `Http404` exception.'),
          _buildCodeBlock('''from django.http import Http404

def my_view(request):
    raise Http404("Page not found")'''),

          _buildHeader('Django Templates'),

          _buildParagraph(
              'Templates in Django are used to separate the design from the Python code. They are simple HTML files that contain placeholders for dynamic content. Django templates use a special syntax to add logic such as loops, conditions, and variable display.'),
          
          _buildSubHeader('Creating a Template'),
          _buildParagraph(
              'Templates are stored in a `templates` directory within your app. Create an HTML file, such as `index.html`, in the `templates` directory.'),
          _buildCodeBlock('''<!-- Example of a simple template -->
<!DOCTYPE html>
<html>
<head>
    <title>My Django App</title>
</head>
<body>
    <h1>{{ message }}</h1>
</body>
</html>'''),

          _buildParagraph(
              'In this template, `{{ message }}` is a placeholder for a variable passed from the view.'),

          _buildSubHeader('Template Variables'),
          _buildParagraph(
              'Template variables are placeholders in the template that are replaced with values when the template is rendered. Variables are enclosed in double curly braces: `{{ variable_name }}`.'),
          _buildCodeBlock('''<h1>{{ user_name }}</h1>
<p>{{ user_age }} years old</p>'''),

          _buildParagraph(
              'In this example, `user_name` and `user_age` are variables passed from the view to the template.'),

          _buildSubHeader('Template Tags'),
          _buildParagraph(
              'Template tags are used to add logic to your templates. Tags are enclosed in `{% %}` and can be used for loops, conditions, and more.'),
          _buildCodeBlock('''{% if user_name %}
    <p>Hello, {{ user_name }}!</p>
{% else %}
    <p>Hello, Guest!</p>
{% endif %}'''),

          _buildParagraph(
              'In this example, the `{% if %}` tag checks if `user_name` is provided. If it is, the template displays a personalized greeting; otherwise, it displays a generic greeting.'),

          _buildSubHeader('Template Inheritance'),
          _buildParagraph(
              'Django allows templates to inherit from other templates, which is useful for reusing common layout elements like headers and footers. You define a base template and extend it in other templates.'),
          _buildCodeBlock('''<!-- base.html -->
<!DOCTYPE html>
<html>
<head>
    <title>{% block title %}My Django App{% endblock %}</title>
</head>
<body>
    {% block content %}{% endblock %}
</body>
</html>'''),

          _buildParagraph(
              'In this `base.html` template, `{% block title %}` and `{% block content %}` are placeholders that can be overridden in child templates.'),
          _buildCodeBlock('''<!-- index.html -->
{% extends 'base.html' %}

{% block title %}Index{% endblock %}

{% block content %}
    <h1>Welcome to My Django App</h1>
{% endblock %}'''),

          _buildParagraph(
              'The `index.html` template extends `base.html` and overrides the `title` and `content` blocks.'),

          _buildHeader('Next Steps'),
          _buildParagraph(
              'Now that you understand the basics of views and templates in Django, you can start building more complex applications. For more advanced topics, refer to the official Django documentation at https://docs.djangoproject.com/.'),
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
