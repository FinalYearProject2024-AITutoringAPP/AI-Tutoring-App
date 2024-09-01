import 'package:flutter/material.dart';

class NodeJSUploadFilesPage extends StatelessWidget {
  get port => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js File Upload',
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
          _buildHeader('Node.js File Upload'),
          _buildParagraph(
              'In Node.js, file upload can be managed using middleware packages like `multer`. This allows you to handle file uploads in your Node.js application efficiently.'),
          _buildHeader('Prerequisites'),
          _buildParagraph(
              'Ensure you have Node.js and npm (Node Package Manager) installed. If not, install them from [Node.js official website](https://nodejs.org/).'),
          _buildHeader('Setting Up the Project'),
          _buildParagraph(
              'First, create a new directory for your project and navigate to it. Initialize a new Node.js project using npm:'),
          _buildCodeBlock(
              '''mkdir myapp\ncd myapp\nnpm init -y'''),
          _buildParagraph(
              'Install the necessary packages. You will need `express` for the server and `multer` for handling file uploads:'),
          _buildCodeBlock(
              '''npm install express multer'''),
          _buildHeader('Creating the Server'),
          _buildParagraph(
              'Create a file named `app.js` in your project directory. Add the following code to set up a basic Express server and configure file uploading with multer:'),
          _buildCodeBlock(
              '''const express = require('express');\nconst multer = require('multer');\nconst path = require('path');\n\nconst app = express();\nconst port = 3000;\n\n// Set up storage engine\nconst storage = multer.diskStorage({\n  destination: (req, file, cb) => {\n    cb(null, 'uploads');\n  },\n  filename: (req, file, cb) => {\n    cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));\n  }\n});\n\nconst upload = multer({ storage: storage });\n\n// Serve static files from 'public' directory\napp.use(express.static('public'));\n\n// File upload route\napp.post('/upload', upload.single('file'), (req, res) => {\n  res.send('File uploaded successfully.');\n});\n\napp.listen(port, () => {\n  console.log(`Server running at http://localhost:${port}`);\n});'''),
          _buildHeader('Creating the HTML Form'),
          _buildParagraph(
              'Create a `public` directory in your project root. Inside it, create an `index.html` file with the following content to provide a form for file uploads:'),
          _buildCodeBlock(
              '''<!DOCTYPE html>\n<html>\n<head>\n  <title>File Upload</title>\n</head>\n<body>\n  <h1>Upload File</h1>\n  <form ref='uploadForm' id='uploadForm' action='/upload' method='post' encType='multipart/form-data'>\n    <input type='file' name='file' />\n    <input type='submit' value='Upload!' />\n  </form>\n</body>\n</html>'''),
          _buildHeader('Running the Server'),
          _buildParagraph(
              'Start your server by running the following command in your terminal:'),
          _buildCodeBlock(
              '''node app.js'''),
          _buildParagraph(
              'Navigate to `http://localhost:3000` in your web browser, and you should see the file upload form. Choose a file and click "Upload!" to upload it to the server.'),
          _buildHeader('Handling Upload Errors'),
          _buildParagraph(
              'You can also handle errors and perform additional validation in your file upload route. For example, you might want to restrict the file types that can be uploaded:'),
          _buildCodeBlock(
              '''const upload = multer({\n  storage: storage,\n  fileFilter: (req, file, cb) => {\n    const allowedTypes = /jpeg|jpg|png/;\n    const extname = allowedTypes.test(path.extname(file.originalname).toLowerCase());\n    const mimetype = allowedTypes.test(file.mimetype);\n    if (mimetype && extname) {\n      return cb(null, true);\n    } else {\n      cb('Error: Images only!');\n    }\n  }\n});'''),
          _buildHeader('Conclusion'),
          _buildParagraph(
              'This page covers the basics of handling file uploads in a Node.js application using Express and Multer. You can now handle file uploads and manage file storage effectively.'),
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
