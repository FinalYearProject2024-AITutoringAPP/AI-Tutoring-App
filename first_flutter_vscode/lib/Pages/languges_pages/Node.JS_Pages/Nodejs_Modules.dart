import 'package:flutter/material.dart';

class NodeJSModulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js Modules',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('Node.js Modules'),
          _buildParagraph(
              'Modules are a fundamental part of Node.js, allowing developers to organize code into reusable components. Each module is a JavaScript file that can be imported and used in other parts of the application.'),
          _buildHeader('Built-in Modules'),
          _buildParagraph(
              'Node.js has several built-in modules that provide various functionalities, such as handling file systems, working with HTTP, and managing URLs. These modules can be easily imported using the `require()` function.'),
          _buildCodeBlock('''// Import the built-in HTTP module
const http = require('http');

// Import the built-in URL module
const url = require('url');'''),
          _buildHeader('Creating Your Own Modules'),
          _buildParagraph(
              'You can create your own modules in Node.js. A module is simply a JavaScript file. You can export functions or variables from the module and import them in other files using `require()`.'),
          _buildCodeBlock('''// myModule.js
exports.myFunction = function() {
  return "Hello from myModule!";
}

// main.js
const myModule = require('./myModule');
console.log(myModule.myFunction());'''),
          _buildHeader('The HTTP Module'),
          _buildParagraph(
              'The `http` module allows Node.js to transfer data over the Hyper Text Transfer Protocol (HTTP). This module can be used to create an HTTP server that listens to server ports and gives a response back to the client.'),
          _buildCodeBlock('''// Import the HTTP module
const http = require('http');

// Create an HTTP server
http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write('Hello World!');
  res.end();
}).listen(8080);

console.log('Server running at http://localhost:8080/');'''),
          _buildParagraph(
              'In the example above, an HTTP server is created that listens on port 8080. When accessed, it responds with "Hello World!".'),
          _buildHeader('The URL Module'),
          _buildParagraph(
              'The `url` module provides utilities for URL resolution and parsing. This module can be used to parse URLs and retrieve information such as the hostname, pathname, query string, and more.'),
          _buildCodeBlock('''// Import the URL module
const url = require('url');

const myUrl = new URL('https://www.example.com/path/name?year=2024&month=august');

// Get the full URL
console.log(myUrl.href);

// Get the protocol
console.log(myUrl.protocol);

// Get the pathname
console.log(myUrl.pathname);

// Get the query parameters
console.log(myUrl.searchParams.get('year'));
console.log(myUrl.searchParams.get('month'));'''),
          _buildParagraph(
              'The example above demonstrates how to use the `url` module to parse a URL and extract different parts of it, such as the protocol, pathname, and query parameters.'),
          _buildHeader('Summary'),
          _buildParagraph(
              'Node.js modules allow for better code organization and reuse. With built-in modules like `http` and `url`, Node.js provides powerful tools for creating web servers and handling URLs. Additionally, developers can create their own custom modules to encapsulate functionality and improve code maintainability.'),
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontFamily: 'Times New Roman',
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Courier New',
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
