import 'package:flutter/material.dart';

void main() {
  runApp(DjangoForLoopPage());
}

class DjangoForLoopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Template Tags: For Loop',
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
                'Django Template Tags: For Loop',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'The {% for %} template tag in Django is used to loop over a sequence (e.g., a list or queryset) and output the contents for each item in the sequence.',
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
{% for item in sequence %}
    <!-- Output each item -->
{% endfor %}
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
                'Consider the following example where we loop through a list of fruits:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
<ul>
{% for fruit in fruits %}
    <li>{{ fruit }}</li>
{% endfor %}
</ul>
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
                '1. The {% for %} tag loops through the "fruits" list.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '2. Each fruit in the list is output inside a <li> tag.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'Using "Forloop Counter"',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'Django provides a special forloop variable that contains counters and other useful information about the current iteration.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% for fruit in fruits %}
    <p>{{ forloop.counter }}: {{ fruit }}</p>
{% endfor %}
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
                '1. {{ forloop.counter }} outputs the current iteration count, starting from 1.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Other Useful Forloop Variables',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'Django\'s forloop provides several useful variables:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
forloop.counter:     Current iteration (1-indexed)
forloop.counter0:    Current iteration (0-indexed)
forloop.revcounter:  Number of iterations remaining, counting from the end
forloop.revcounter0: Number of iterations remaining, counting from the end, 0-indexed
forloop.first:       True if this is the first iteration
forloop.last:        True if this is the last iteration
forloop.parentloop:  For nested loops, this is the loop "above" the current one
''',
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent, fontFamily: 'Courier New'),
                ),
              ),
              SizedBox(height: 20.0),

              Text(
                'Summary',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'The {% for %} template tag is a powerful tool in Django for outputting items from a sequence. It can be enhanced with forloop variables to gain additional control over the output. By understanding and utilizing these features, you can create dynamic, data-driven Django templates.',
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
