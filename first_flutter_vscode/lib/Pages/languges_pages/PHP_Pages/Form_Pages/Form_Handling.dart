import 'package:flutter/material.dart';

void main() {
  runApp(PHPFormHandlingPage());
}

class PHPFormHandlingPage extends StatelessWidget {
  get name => null;
  
  get email => null;
  
  get _SERVER => null;
  
  get _POST => null;
  
  get _GET => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Form Handling',
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
                'PHP Form Handling',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              
              Text(
                'In PHP, form data can be sent to a server using the GET or POST methods. The PHP superglobals $_GET and $_POST are used to collect form data after submitting an HTML form.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Form Handling Explanation
              Text(
                'The PHP $_POST Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The $_POST method is used to send form data to a server. This method is considered more secure than $_GET because the form data is not visible in the URL.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // PHP Code Example
              Text(
                'Example PHP Code:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '```php\n'
                '<!DOCTYPE html>\n'
                '<html>\n'
                '<body>\n'
                '\n'
                '<h2>PHP Form Handling</h2>\n'
                '<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">\n'
                '  Name: <input type="text" name="name"><br>\n'
                '  Email: <input type="text" name="email"><br>\n'
                '  <input type="submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'if ($_SERVER["REQUEST_METHOD"] == "POST") {\n'
                '  // Collect and sanitize input data\n'
                '  $name = htmlspecialchars($_POST["name"]);\n'
                '  $email = htmlspecialchars($_POST["email"]);\n'
                '  echo "Name: $name<br>Email: $email";\n'
                '}\n'
                '?>\n'
                '</body>\n'
                '</html>\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // PHP $_GET Method
              Text(
                'The PHP $_GET Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'The $_GET method is used to send form data to a server using a URL. It is less secure because the data is visible in the URL.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // PHP Code Example
              Text(
                'Example PHP Code:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '```php\n'
                '<!DOCTYPE html>\n'
                '<html>\n'
                '<body>\n'
                '\n'
                '<h2>PHP Form Handling</h2>\n'
                '<form method="get" action="<?php echo $_SERVER["PHP_SELF"];?>">\n'
                '  Name: <input type="text" name="name"><br>\n'
                '  Email: <input type="text" name="email"><br>\n'
                '  <input type="submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'if ($_SERVER["REQUEST_METHOD"] == "GET") {\n'
                '  // Collect and sanitize input data\n'
                '  $name = htmlspecialchars($_GET["name"]);\n'
                '  $email = htmlspecialchars($_GET["email"]);\n'
                '  echo "Name: $name<br>Email: $email";\n'
                '}\n'
                '?>\n'
                '</body>\n'
                '</html>\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'Courier New'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
