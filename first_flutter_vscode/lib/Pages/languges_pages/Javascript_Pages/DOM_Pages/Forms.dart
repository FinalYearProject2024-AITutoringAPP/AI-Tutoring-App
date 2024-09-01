import 'package:flutter/material.dart';

class JSDOMFormsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript DOM Forms',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(' Form Elements'),
            _buildParagraph(
              'HTML forms are used to collect user input. The form elements include inputs, selects, textareas, and buttons.'
            ),
            _buildCodeSnippet(
              'HTML Form Example:\n'
              '```html\n'
              '<form id="myForm">\n'
              '  <label for="fname">First name:</label>\n'
              '  <input type="text" id="fname" name="fname"><br><br>\n'
              '  <label for="lname">Last name:</label>\n'
              '  <input type="text" id="lname" name="lname"><br><br>\n'
              '  <input type="submit" value="Submit">\n'
              '</form>\n'
              '```\n'
              'This form collects the user\'s first and last names and includes a submit button.'
            ),
            _buildSectionTitle('Accessing Form Elements'),
            _buildParagraph(
              'You can access and manipulate form elements using JavaScript. Here\'s how to get form values:'
            ),
            _buildCodeSnippet(
              'JavaScript Example:\n'
              '```javascript\n'
              'var form = document.getElementById("myForm");\n'
              'var fname = form.elements["fname"].value;\n'
              'var lname = form.elements["lname"].value;\n'
              'console.log("First name: " + fname);\n'
              'console.log("Last name: " + lname);\n'
              '```\n'
              'This code snippet retrieves the values of the form fields and logs them to the console.'
            ),
            _buildSectionTitle('Form Validation'),
            _buildParagraph(
              'Form validation is used to ensure that the user input is valid before submitting the form. JavaScript can be used to validate form inputs.'
            ),
            _buildCodeSnippet(
              'JavaScript Validation Example:\n'
              '```javascript\n'
              'function validateForm() {\n'
              '  var fname = document.getElementById("fname").value;\n'
              '  var lname = document.getElementById("lname").value;\n'
              '  if (fname == "" || lname == "") {\n'
              '    alert("All fields must be filled out.");\n'
              '    return false;\n'
              '  }\n'
              '  return true;\n'
              '}\n'
              '\n'
              'document.getElementById("myForm").onsubmit = function() {\n'
              '  return validateForm();\n'
              '};\n'
              '```\n'
              'This function checks if the form fields are empty and prevents form submission if they are.'
            ),
            _buildSectionTitle('Event Handling'),
            _buildParagraph(
              'Event handling is used to respond to user actions like clicking a button or submitting a form.'
            ),
            _buildCodeSnippet(
              'JavaScript Event Handling Example:\n'
              '```javascript\n'
              'document.getElementById("myForm").addEventListener("submit", function(event) {\n'
              '  var fname = document.getElementById("fname").value;\n'
              '  var lname = document.getElementById("lname").value;\n'
              '  if (fname == "" || lname == "") {\n'
              '    alert("All fields must be filled out.");\n'
              '    event.preventDefault();\n'
              '  }\n'
              '});\n'
              '```\n'
              'This code adds an event listener to the form to validate input before submission.'
            ),
            _buildSectionTitle('Further Reading'),
            _buildParagraph(
              'For more information about HTML forms and validation, check out the following resources:\n'
              '- [W3Schools - HTML Forms](https://www.w3schools.com/html/html_forms.asp)\n'
              '- [MDN Web Docs - Form Validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Forms/Form_validation)'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'Courier',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
