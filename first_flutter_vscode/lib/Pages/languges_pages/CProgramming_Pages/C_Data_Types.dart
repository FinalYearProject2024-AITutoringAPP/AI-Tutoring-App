import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Data_Types_Pages/Characters.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Data_Types_Pages/Data_Types.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Data_Types_Pages/Decimal_Precision.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CProgramming_Pages/Data_Types_Pages/Numbers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CDataTypesPage());
}

class CDataTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Data Types',
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
                'C Data Types Topics',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20.0),

              // Topics
              _buildTopic(context, 'Data Types', '', CProgrammingDataTypePage()),
              _buildTopic(context, 'Characters', '', CProgrammingCharactersPage()),
              _buildTopic(context, 'Numbers', '', CProgrammingNumbersPage()),
              _buildTopic(context, 'Decimal Precision', '', CProgrammingDecimalPrecisionPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(BuildContext context, String name, String description, Widget nextPage) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
      ),
    );
  }
}
