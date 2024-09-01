import 'package:flutter/material.dart';

class NodeJSFileSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js File System',
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
          _buildHeader('Node.js File System'),
          _buildParagraph(
              'The Node.js file system module (`fs`) allows you to work with the file system on your computer. You can use it to read, create, update, delete, and rename files.'),
          _buildHeader('Read Files'),
          _buildParagraph(
              'To read the content of a file, use the `fs.readFile()` method. It is an asynchronous method that reads the entire content of the file into memory before passing it to the callback function.'),
          _buildCodeBlock('''// Import the File System module
const fs = require('fs');

// Read the content of a file
fs.readFile('example.txt', 'utf8', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(data);
});'''),
          _buildParagraph(
              'The example above reads the content of "example.txt" and logs it to the console. If the file does not exist or cannot be read, an error is logged.'),
          _buildHeader('Create Files'),
          _buildParagraph(
              'To create a new file, use the `fs.writeFile()` method. This method replaces the content of an existing file or creates a new file if it does not exist.'),
          _buildCodeBlock('''// Write to a file
fs.writeFile('example.txt', 'Hello, World!', (err) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('File has been created!');
});'''),
          _buildParagraph(
              'The example above creates a new file named "example.txt" and writes "Hello, World!" to it. If the file already exists, it will be replaced.'),
          _buildHeader('Update Files'),
          _buildParagraph(
              'To update the content of an existing file, you can use the `fs.appendFile()` method. This method appends the specified content to the end of the file.'),
          _buildCodeBlock('''// Append content to a file
fs.appendFile('example.txt', ' This is additional content.', (err) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('File has been updated!');
});'''),
          _buildParagraph(
              'The example above appends "This is additional content." to the end of "example.txt". If the file does not exist, it will be created.'),
          _buildHeader('Delete Files'),
          _buildParagraph(
              'To delete a file, use the `fs.unlink()` method. This method removes the specified file from the file system.'),
          _buildCodeBlock('''// Delete a file
fs.unlink('example.txt', (err) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('File has been deleted!');
});'''),
          _buildParagraph(
              'The example above deletes "example.txt" from the file system. If the file does not exist, an error is logged.'),
          _buildHeader('Rename Files'),
          _buildParagraph(
              'To rename a file, use the `fs.rename()` method. This method renames the specified file.'),
          _buildCodeBlock('''// Rename a file
fs.rename('oldname.txt', 'newname.txt', (err) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('File has been renamed!');
});'''),
          _buildParagraph(
              'The example above renames "oldname.txt" to "newname.txt". If the file does not exist, an error is logged.'),
          _buildHeader('Summary'),
          _buildParagraph(
              'The Node.js `fs` module provides various methods for interacting with the file system, such as reading, writing, updating, deleting, and renaming files. These methods can be used to manage files and directories on your computer, allowing for powerful file manipulation within your Node.js applications.'),
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
