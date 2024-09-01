import 'package:flutter/material.dart';

class JavaOutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Java Output',
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
            Text(
              'Java Output',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'In Java, you can output text to the console using the `System.out.println()` method. This method prints the text inside the quotation marks to the console.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'Hello World',
            ),
            SizedBox(height: 20.0),
            Text(
              'Note: `println()` adds a new line after the text, while `print()` does not.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),

            Text(
              'Java Output Numbers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'In Java, you can output numbers alongside text using the `System.out.println()` method. Simply include the number inside the parentheses:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
public class Main {
  public static void main(String[] args) {
    System.out.println(3 + 3);
    System.out.println(2 * 5);
  }
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              '6\n10',
            ),
            SizedBox(height: 20.0),

            Text(
              'You can also combine text and numbers in a single output. For example:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            _buildCodeExample(
              '''
public class Main {
  public static void main(String[] args) {
    System.out.println("The sum is: " + (3 + 5));
  }
}''',
            ),
            SizedBox(height: 10.0),
            _buildOutputExample(
              'The sum is: 8',
            ),
            SizedBox(height: 20.0),

            Text(
              'In the example above, the output is the result of concatenating the text and the sum of the numbers inside the parentheses.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20.0),
          ],
        ),
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
