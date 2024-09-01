import 'package:flutter/material.dart';

void main() {
  runApp(PHPFormURLEmailPage());
}

class PHPFormURLEmailPage extends StatelessWidget {
  get email => null;
  
  get _POST => null;
  
  get url => null;
  
  get emailErr => null;
  
  get _SERVER => null;
  
  get urlErr => null;
  
  get data => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Form URL and Email',
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
                'PHP Form URL and Email',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'In PHP, form validation can include URL and email validation. To ensure that the data entered in form fields is in a valid URL or email format, you can use the `filter_var()` function with appropriate filters.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Example PHP Code
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
                '$urlErr = "";\n'
                '$emailErr = "";\n'
                '$url = "";\n'
                '$email = "";\n'
                '\n'
                'if ($_SERVER["REQUEST_METHOD"] == "POST") {\n'
                '  if (!filter_var($_POST["url"], FILTER_VALIDATE_URL)) {\n'
                '    $urlErr = "Invalid URL";\n'
                '  } else {\n'
                '    $url = test_input($_POST["url"]);\n'
                '  }\n'
                '  if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {\n'
                '    $emailErr = "Invalid email format";\n'
                '  } else {\n'
                '    $email = test_input($_POST["email"]);\n'
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
                '<h2>PHP Form URL and Email Validation</h2>\n'
                '<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">\n'
                '  URL: <input type="text" name="url">\n'
                '  <span class="error">* <?php echo $urlErr;?></span><br><br>\n'
                '  Email: <input type="text" name="email">\n'
                '  <span class="error">* <?php echo $emailErr;?></span><br><br>\n'
                '  <input type="submit" name="submit" value="Submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'echo "<h2>Your Input:</h2>";\n'
                'echo "URL: ".$url."<br>";\n'
                'echo "Email: ".$email."<br>";\n'
                '?>\n'
                '</body>\n'
                '</html>\n'
                '```',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'Courier New'),
              ),
              SizedBox(height: 20.0),

              // Explanation
              Text(
                'Explanation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'In this example, the `filter_var()` function is used to validate the URL and email fields. If the input is not a valid URL or email, an error message is shown. The `test_input()` function is used to sanitize the input data.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Form Submission
              Text(
                'Form Submission',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'When the form is submitted, the PHP script processes the URL and email fields. If the fields contain invalid data, appropriate error messages are displayed. Otherwise, the validated input is shown below the form.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
