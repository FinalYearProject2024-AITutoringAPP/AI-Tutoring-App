import 'package:flutter/material.dart';

class JavaScriptErrorHandlingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Error Handling',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Set background color to blue-grey
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Text(
              'JavaScript Errors - Throw and Try to Catch',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'When an error occurs, JavaScript will normally stop and generate an error message. The technical term for this is: JavaScript will throw an error.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),

            // Section 1: JavaScript try and catch
            _buildSectionTitle('JavaScript try and catch'),
            Text(
              'The try statement allows you to define a block of code to be tested for errors while it is being executed.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'The catch statement allows you to define a block of code to be executed, if an error occurs in the try block.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
try {
  adddlert("Welcome guest!");
} catch (err) {
  document.getElementById("demo").innerHTML = err.message;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'ReferenceError: adddlert is not defined',
            ),
            SizedBox(height: 20.0),

            // Section 2: The throw Statement
            _buildSectionTitle('The throw Statement'),
            Text(
              'The throw statement allows you to create a custom error.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Technically you can throw an exception (throw an error).',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'The exception can be a JavaScript String, a Number, a Boolean or an Object:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
throw "Too big";    // throw a text
throw 500;          // throw a number''',
            ),
            SizedBox(height: 20.0),

            // Section 3: JavaScript Errors
            _buildSectionTitle('JavaScript Errors'),
            Text(
              'JavaScript throws a lot of different errors.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'The error object provides two useful properties: name and message.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
try {
  let x = 10;
  if(x == "") throw "is empty";
  if(isNaN(x)) throw "not a number";
  x = Number(x);
  if(x < 5) throw "too low";
  if(x > 10) throw "too high";
} catch(err) {
  document.getElementById("demo").innerHTML = "Input " + err;
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Input too high',
            ),
            SizedBox(height: 20.0),

            // Section 4: JavaScript Error Object
            _buildSectionTitle('JavaScript Error Object'),
            Text(
              'All JavaScript error objects are descendants of the Error object, or an object inherited from the Error object.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            _buildCodeExample(
              '''
try {
  throw new Error("Something went wrong");
} catch (err) {
  console.log(err.name + ": " + err.message);
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Error: Something went wrong',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCodeExample(String code) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[850],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          code,
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 16,
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }

  Widget _buildOutputExample(String output) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Output:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.black,
          child: Text(
            output,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              color: Colors.lightGreenAccent,
            ),
          ),
        ),
      ],
    );
  }
}

