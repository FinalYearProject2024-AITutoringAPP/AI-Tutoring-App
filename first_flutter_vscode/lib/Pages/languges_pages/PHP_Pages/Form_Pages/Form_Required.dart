import 'package:flutter/material.dart';

void main() {
  runApp(PHPFormRequiredPage());
}

class PHPFormRequiredPage extends StatelessWidget {
  get name => null;
  
  get _POST => null;
  
  get _SERVER => null;
  
  get nameErr => null;
  
  get data => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Form Required',
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
                'PHP Form Required',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'In PHP, form fields are considered "required" if they must be filled out before the form can be submitted. By adding the `required` attribute to the input fields, you ensure that users do not leave them empty.',
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
                '$nameErr = "";\n'
                '$name = "";\n'
                '\n'
                'if ($_SERVER["REQUEST_METHOD"] == "POST") {\n'
                '  if (empty($_POST["name"])) {\n'
                '    $nameErr = "Name is required";\n'
                '  } else {\n'
                '    $name = test_input($_POST["name"]);\n'
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
                '<h2>PHP Form Required Example</h2>\n'
                '<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">\n'
                '  Name: <input type="text" name="name">\n'
                '  <span class="error">* <?php echo $nameErr;?></span><br><br>\n'
                '  <input type="submit" name="submit" value="Submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'echo "<h2>Your Input:</h2>";\n'
                'echo $name;\n'
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
                'In the example above, the `name` field is required. If it is left empty, an error message will be displayed. The `$_SERVER["REQUEST_METHOD"]` variable is used to check if the form has been submitted, and the `test_input()` function is used to sanitize the input data.',
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
                'When the form is submitted, the PHP script processes the input and checks whether the `name` field is empty. If it is empty, the error message "Name is required" is displayed next to the field. Otherwise, the sanitized input is shown below the form.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
