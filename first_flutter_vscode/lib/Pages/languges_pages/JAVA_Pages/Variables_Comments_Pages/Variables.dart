import 'package:flutter/material.dart';

void main() {
  runApp(JAVAVariablesPage());
}

class JAVAVariablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Java Variables',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: Colors.redAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Java Variables',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              
              _buildSectionTitle('Variables in Java'),
              _buildParagraph(
                'A variable is a container that holds data which can be changed later during the execution of the program. In Java, there are different types of variables, for example:'),
              _buildBulletPoint('String - stores text, such as "Hello". String values are surrounded by double quotes'),
              _buildBulletPoint('int - stores integers (whole numbers), without decimals, such as 123 or -123'),
              _buildBulletPoint('float - stores floating point numbers, with decimals, such as 19.99 or -19.99'),
              _buildBulletPoint('char - stores single characters, such as \'a\' or \'B\'. Char values are surrounded by single quotes'),
              _buildBulletPoint('boolean - stores values with two states: true or false'),

              _buildSectionTitle('Declaring (Creating) Variables'),
              _buildParagraph(
                'To create a variable, you must specify the type and assign it a value:'),
              _buildCodeSnippet(
                'String name = "John";\nint myNum = 15;\nfloat myFloatNum = 5.99f;\nchar myLetter = \'D\';\nboolean myBool = true;'),

              _buildSectionTitle('Display Variables'),
              _buildParagraph(
                'You can display variables using the println() method:'),
              _buildCodeSnippet(
                'System.out.println(name);\nSystem.out.println(myNum);'),

              _buildSectionTitle('Add Variables Together'),
              _buildParagraph(
                'You can also use the + operator to add variables together:'),
              _buildCodeSnippet(
                'int x = 5;\nint y = 6;\nint sum = x + y;\nSystem.out.println(sum);'),

              _buildSectionTitle('Declare Many Variables'),
              _buildParagraph(
                'To declare more than one variable of the same type, use a comma-separated list:'),
              _buildCodeSnippet(
                'int x = 5, y = 6, z = 50;\nSystem.out.println(x + y + z);'),

              _buildSectionTitle('Java Identifiers'),
              _buildParagraph(
                'All Java variables must be identified with unique names. These unique names are called identifiers.\n'
                'Identifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).'),

              _buildSectionTitle('The General Rules for Naming Variables are:'),
              _buildBulletPoint('Names can contain letters, digits, underscores, and dollar signs'),
              _buildBulletPoint('Names must begin with a letter'),
              _buildBulletPoint('Names should start with a lowercase letter and it cannot contain whitespace'),
              _buildBulletPoint('Names are case-sensitive ("myVar" and "myvar" are different variables)'),
              _buildBulletPoint('Reserved words (like Java keywords, such as int or boolean) cannot be used as names'),

              _buildSectionTitle('Final Variables'),
              _buildParagraph(
                'If you don\'t want others (or yourself) to overwrite existing values, use the final keyword:'),
              _buildCodeSnippet(
                'final int myNum = 15;\nmyNum = 20; // will generate an error'),

              _buildSectionTitle('Java Variable Types'),
              _buildParagraph(
                'There are three types of variables in Java:'),
              _buildBulletPoint('Local Variables'),
              _buildBulletPoint('Instance Variables (Non-Static Fields)'),
              _buildBulletPoint('Class/Static Variables'),

              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeSnippet(String code) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      color: Colors.black87,
      child: Text(
        code,
        style: TextStyle(
          fontSize: 16,
          color: Colors.greenAccent,
          fontFamily: 'Courier',
        ),
      ),
    );
  }
}
