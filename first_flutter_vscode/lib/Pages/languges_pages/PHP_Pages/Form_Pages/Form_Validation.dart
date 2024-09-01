import 'package:flutter/material.dart';

void main() {
  runApp(PHPFormValidationPage());
}

class PHPFormValidationPage extends StatelessWidget {
  get name => null;
  
  get email => null;
  
  get nameErr => null;
  
  get _POST => null;
  
  get _SERVER => null;
  
  get emailErr => null;
  
  get data => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Form Validation',
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
                'PHP Form Validation',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'Form validation is a crucial part of web development. It ensures that the data submitted by the user is correct and complete. In PHP, form validation is usually done on the server-side to ensure data integrity and security.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Form Validation Overview
              Text(
                'Form Validation Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In PHP, form validation can be done in the same script that displays the form. The validation code is written in the same file as the form and the form is submitted to the same file. This way, the validation and form processing are handled in a single script.',
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
                '<?php\n'
                '$nameErr = $emailErr = "";\n'
                '$name = $email = "";\n'
                '\n'
                'if ($_SERVER["REQUEST_METHOD"] == "POST") {\n'
                '  if (empty($_POST["name"])) {\n'
                '    $nameErr = "Name is required";\n'
                '  } else {\n'
                '    $name = test_input($_POST["name"]);\n'
                '  }\n'
                '\n'
                '  if (empty($_POST["email"])) {\n'
                '    $emailErr = "Email is required";\n'
                '  } else {\n'
                '    $email = test_input($_POST["email"]);\n'
                '    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {\n'
                '      $emailErr = "Invalid email format";\n'
                '    }\n'
                '  }\n'
                '}\n'
                '\n'
                'function test_input($data) {\n'
                '  $data = trim($data);\n'
                '  $data = stripslashes($data);\n'
                '  $data = htmlspecialchars($data);\n'
                '  return $data;\n'
                '}\n'
                '?>\n'
                '\n'
                '<h2>PHP Form Validation</h2>\n'
                '<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">\n'
                '  Name: <input type="text" name="name">\n'
                '  <span class="error">* <?php echo $nameErr;?></span><br><br>\n'
                '  Email: <input type="text" name="email">\n'
                '  <span class="error">* <?php echo $emailErr;?></span><br><br>\n'
                '  <input type="submit" name="submit" value="Submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'echo "<h2>Your Input:</h2>";\n'
                'echo $name;\n'
                'echo "<br>";\n'
                'echo $email;\n'
                '?>\n'
                '</body>\n'
                '</html>\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Validation Functions
              Text(
                'Validation Functions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'PHP provides a variety of functions to validate and sanitize input data. For example, `filter_var()` can be used to validate and sanitize email addresses, while custom functions like `test_input()` can be used for other forms of data validation.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
