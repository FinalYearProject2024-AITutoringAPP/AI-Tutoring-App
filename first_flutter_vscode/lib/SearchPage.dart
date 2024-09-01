import 'package:first_flutter_vscode/Pages/languges_pages/C++.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/NodeJs.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Cprogramming.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Java.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascriptessentials.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PythonBasics.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchQuery = '';
  List<String> _frequentLanguages = [
    'Python',
    'JavaScript',
    'Node.JS',
    'PHP',
    'Django',
    'HTML',
    'CSS',
    'C Programming',
    'C++',
    'Java',
  ];
  List<String> _searchResults = [];

  // Mapping languages to their respective pages
  final Map<String, WidgetBuilder> _languagePages = {
    'Python': (context) => PythonBasicsPage(),
    'JavaScript': (context) => JavaScriptEssentialsPage(),
    'Node.JS': (context) => NodejsPage(),
    'PHP': (context) => PHPPage(),
    'Django': (context) => DjangoPage(),
    'HTML': (context) => HTMLPage(),
    'CSS': (context) => CSSPage(),
    'C Programming': (context) => CProgrammingPage(),
    'C++': (context) => CPlusPlusPage(),
    'Java': (context) => JavaPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                  _performSearch();
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter a programming language...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            _searchQuery.isEmpty
                ? _buildFrequentLanguages()
                : Expanded(
                    child: _buildSearchResults(),
                  ),
          ],
        ),
      ),
    );
  }

  void _performSearch() {
    setState(() {
      if (_searchQuery.isEmpty) {
        _searchResults = [];
      } else {
        _searchResults = _frequentLanguages
            .where((lang) =>
                lang.toLowerCase().contains(_searchQuery.toLowerCase()))
            .toList();
      }
    });
  }

  Widget _buildFrequentLanguages() {
    return Expanded(
      child: ListView.builder(
        itemCount: _frequentLanguages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_frequentLanguages[index]),
            onTap: () {
              _navigateToLanguagePage(_frequentLanguages[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildSearchResults() {
    if (_searchResults.isEmpty) {
      return Center(
        child: Text('No results found for "$_searchQuery"'),
      );
    } else {
      return ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_searchResults[index]),
            onTap: () {
              _navigateToLanguagePage(_searchResults[index]);
            },
          );
        },
      );
    }
  }

  void _navigateToLanguagePage(String language) {
    final page = _languagePages[language];
    if (page != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: page),
      );
    } else {
      // Handle case where the page is not found (unlikely given the predefined list)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Page not found for $language')),
      );
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: SearchPage(),
  ));
}
