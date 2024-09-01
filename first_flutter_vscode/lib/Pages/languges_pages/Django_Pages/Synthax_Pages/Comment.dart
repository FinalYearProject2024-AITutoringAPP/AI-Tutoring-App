import 'package:flutter/material.dart';

void main() {
  runApp(DjangoCommentPage());
}

class DjangoCommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Django Template Tags: Comment',
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
                'Django Template Tags: Comment',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'The {% comment %} template tag in Django is used to comment out parts of a template. This can be useful when you want to include some notes or temporarily disable certain parts of your template without deleting them.',
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
{% comment %}
    This is a comment.
    It will not be rendered in the HTML.
{% endcomment %}
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
                'Here\'s an example of how you might use the {% comment %} tag in a Django template:',
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

<h1>My Website</h1>

{% comment %}
<p>This is a paragraph that will not be rendered.</p>
{% endcomment %}

<p>This is another paragraph that will be rendered.</p>

</body>
</html>
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
                '1. The {% comment %} tag is used to comment out the first paragraph. It will not be included in the rendered HTML.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '2. The second paragraph will be included in the rendered HTML because it is not commented out.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Commenting Multiple Lines',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Text(
                'You can also use the {% comment %} tag to comment out multiple lines of code. This can be useful if you need to temporarily disable a large section of your template.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                child: Text(
                  '''
{% comment %}
    <div>
        <h2>Title</h2>
        <p>This content will not be rendered.</p>
    </div>
{% endcomment %}
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
                'The {% comment %} template tag is a simple yet powerful tool in Django that allows you to comment out sections of your template. This can be useful for adding notes or temporarily disabling code without removing it entirely.',
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
