import 'package:flutter/material.dart';

class NodeJSEmailPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Node.js Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('Node.js Email'),
          _buildParagraph(
              'In Node.js, you can send emails using the `nodemailer` package. This allows you to integrate email functionality into your Node.js application easily.'),
          _buildHeader('Prerequisites'),
          _buildParagraph(
              'Ensure you have Node.js and npm (Node Package Manager) installed. If not, install them from [Node.js official website](https://nodejs.org/).'),
          _buildHeader('Setting Up the Project'),
          _buildParagraph(
              'First, create a new directory for your project and navigate to it. Initialize a new Node.js project using npm:'),
          _buildCodeBlock(
              '''mkdir emailapp\ncd emailapp\nnpm init -y'''),
          _buildParagraph(
              'Install `nodemailer` using npm:'),
          _buildCodeBlock(
              '''npm install nodemailer'''),
          _buildHeader('Creating the Email Sender'),
          _buildParagraph(
              'Create a file named `sendEmail.js` in your project directory. Add the following code to set up the email sender using `nodemailer`:'),
          _buildCodeBlock(
              '''const nodemailer = require('nodemailer');

// Create a transporter object using the default SMTP transport
let transporter = nodemailer.createTransport({
    service: 'gmail', // use Gmail service
    auth: {
        user: 'your-email@gmail.com', // your email address
        pass: 'your-email-password'   // your email password
    }
});

// Setup email data with unicode symbols
let mailOptions = {
    from: '"Fred Foo 👻" <your-email@gmail.com>', // sender address
    to: 'recipient@example.com', // list of receivers
    subject: 'Hello ✔', // Subject line
    text: 'Hello world?', // plain text body
    html: '<b>Hello world?</b>' // html body
};

// Send mail with defined transport object
transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
        return console.log(error);
    }
    console.log('Message sent: %s', info.messageId);
});'''),
         _buildParagraph(
  'Replace `your-email@gmail.com` and `your-email-password` with your actual Gmail account credentials. Make sure to enable "Less secure app access" in your Gmail settings to allow this connection.'
),

          _buildParagraph(
              'To send an email, run the script using Node.js:'),
          _buildCodeBlock(
              '''node sendEmail.js'''),
          _buildHeader('Notes'),
          _buildParagraph(
              'For production environments, consider using environment variables to store sensitive information like email credentials.'),
          _buildParagraph(
              'If you are using other email services (e.g., Yahoo, Outlook), update the `service` and `auth` fields accordingly in the `createTransport` method.'),
          _buildParagraph(
              'Refer to the [Nodemailer documentation](https://nodemailer.com/about/) for more advanced usage and configuration options.'),
        ],
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey[800],
      child: SelectableText(
        code,
        style: TextStyle(
          fontFamily: 'Courier',
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
