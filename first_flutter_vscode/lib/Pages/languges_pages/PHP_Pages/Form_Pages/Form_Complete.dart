import 'package:flutter/material.dart';

void main() {
  runApp(PHPFormCompletePage());
}

class PHPFormCompletePage extends StatelessWidget {
  get data => null;
  
  get _POST => null;
  
  get name => null;
  
  get email => null;
  
  get genderErr => null;
  
  get gender => null;
  
  get nameErr => null;
  
  get _SERVER => null;
  
  get comment => null;
  
  get emailErr => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PHP Form Complete',
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
                'PHP Form Complete',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),

              Text(
                'In this section, we will combine various form handling techniques in PHP, including validation, processing, and displaying form data.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20.0),

              // Example PHP Code
              Text(
                'Complete PHP Form Example:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                '```php\n'
                '<!DOCTYPE html>\n'
                '<html>\n'
                '<head>\n'
                '  <title>PHP Form Complete</title>\n'
                '</head>\n'
                '<body>\n'
                '\n'
                '<?php\n'
                '$name = $email = $gender = $comment = "";\n'
                '$nameErr = $emailErr = $genderErr = "";\n'
                '\n'
                'if ($_SERVER["REQUEST_METHOD"] == "POST") {\n'
                '  if (empty($_POST["name"])) {\n'
                '    $nameErr = "Name is required";\n'
                '  } else {\n'
                '    $name = test_input($_POST["name"]);\n'
                '  }\n'
                '  if (empty($_POST["email"])) {\n'
                '    $emailErr = "Email is required";\n'
                '  } else {\n'
                '    $email = test_input($_POST["email"]);\n'
                '    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {\n'
                '      $emailErr = "Invalid email format";\n'
                '    }\n'
                '  }\n'
                '  if (empty($_POST["gender"])) {\n'
                '    $genderErr = "Gender is required";\n'
                '  } else {\n'
                '    $gender = test_input($_POST["gender"]);\n'
                '  }\n'
                '  $comment = test_input($_POST["comment"]);\n'
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
                '<h2>PHP Form Complete</h2>\n'
                '<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">\n'
                '  Name: <input type="text" name="name" value="<?php echo $name;?>">\n'
                '  <span class="error">* <?php echo $nameErr;?></span><br><br>\n'
                '  E-mail: <input type="text" name="email" value="<?php echo $email;?>">\n'
                '  <span class="error">* <?php echo $emailErr;?></span><br><br>\n'
                '  Gender:\n'
                '  <input type="radio" name="gender" value="female" <?php if ($gender == "female") echo "checked";?>> Female\n'
                '  <input type="radio" name="gender" value="male" <?php if ($gender == "male") echo "checked";?>> Male\n'
                '  <span class="error">* <?php echo $genderErr;?></span><br><br>\n'
                '  Comment: <textarea name="comment" rows="5" cols="40"><?php echo $comment;?></textarea><br><br>\n'
                '  <input type="submit" name="submit" value="Submit">\n'
                '</form>\n'
                '\n'
                '<?php\n'
                'echo "<h2>Your Input:</h2>";\n'
                'echo "Name: ".$name."<br>";\n'
                'echo "Email: ".$email."<br>";\n'
                'echo "Gender: ".$gender."<br>";\n'
                'echo "Comment: ".$comment."<br>";\n'
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
                'This complete PHP form includes validation for name, email, and gender fields. The form processes the submitted data, displays any errors, and shows the validated input after submission. This example demonstrates how to handle form input and validation comprehensively in PHP.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
