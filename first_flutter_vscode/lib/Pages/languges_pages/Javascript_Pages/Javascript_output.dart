import 'package:flutter/material.dart';

class JavaScriptOutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JavaScript Output',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900], // Background color of the page
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'JavaScript Output Methods',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('innerHTML'),
            _buildCodeExample(
              '''
<!DOCTYPE html>
<html>
<body>

<h2>JavaScript Can Change HTML Content</h2>

<p id="demo">This is a paragraph.</p>

<button type="button" onclick="document.getElementById('demo').innerHTML = 'Hello JavaScript!'">
Click Me!
</button>

</body>
</html>
              ''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('document.write()'),
            _buildCodeExample(
              '''
<!DOCTYPE html>
<html>
<body>

<h2>Using document.write()</h2>

<script>
document.write(5 + 6);
</script>

</body>
</html>
              ''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('window.alert()'),
            _buildCodeExample(
              '''
<!DOCTYPE html>
<html>
<body>

<h2>Using window.alert()</h2>

<script>
window.alert(5 + 6);
</script>

</body>
</html>
              ''',
            ),
            SizedBox(height: 20.0),
            _buildSectionTitle('console.log()'),
            _buildCodeExample(
              '''
<!DOCTYPE html>
<html>
<body>

<h2>Using console.log()</h2>

<script>
console.log(5 + 6);
</script>

</body>
</html>
              ''',
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
}
