import 'package:flutter/material.dart';

class PHPSessionsCookiesPage extends StatelessWidget {
  get _SESSION => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHP Sessions and Cookies',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildHeader('PHP Sessions'),
          _buildParagraph(
              'Sessions are used to store information about, or change settings for, the user session. A session is a way to store information (in variables) to be used across multiple pages. Sessions are commonly used to store user data across multiple pages and visits.'),
          
          _buildSubHeader('Starting a Session'),
          _buildParagraph(
              'To start a session, use the `session_start()` function at the beginning of your script. This function must be called before any output is sent to the browser.'),
          _buildCodeBlock('''<?php
session_start();
$_SESSION["username"] = "JohnDoe";
echo "Session started and username is set.";
?>'''),
          
          _buildSubHeader('Storing and Accessing Session Data'),
          _buildParagraph(
              'Session data is stored in the `$_SESSION` superglobal array. You can store, retrieve, and modify session variables using this array.'),
          _buildCodeBlock('''<?php
session_start();
$_SESSION["username"] = "JohnDoe";
echo "Welcome " . $_SESSION["username"];
?>'''),
          
          _buildSubHeader('Ending a Session'),
          _buildParagraph(
              'To end a session and clear all session variables, use `session_unset()` followed by `session_destroy()`.'),
          _buildCodeBlock('''<?php
session_start();
session_unset();
session_destroy();
echo "Session ended.";
?>'''),
          
          _buildSubHeader('Session Variables'),
          _buildParagraph(
              'Session variables are stored on the server and are used to maintain state across different pages and requests.'),
          _buildCodeBlock('''<?php
session_start();
$_SESSION["user_id"] = 123;
echo $_SESSION["user_id"]; // Outputs: 123
?>'''),
          
          _buildSubHeader('Session Settings'),
          _buildParagraph(
              'You can configure session settings in the `php.ini` file. Settings include the session storage path, cookie parameters, and session lifetime.'),
          _buildCodeBlock('''<?php
// Example of changing session configuration settings
ini_set('session.save_path', '/path/to/sessions');
ini_set('session.cookie_lifetime', 3600); // 1 hour
?>'''),
          
          _buildSubHeader('Session Security'),
          _buildParagraph(
              'For enhanced security, use secure cookies, regenerate session IDs to prevent session fixation, and ensure proper session data management.'),
          _buildCodeBlock('''<?php
session_start();
session_regenerate_id(true);
?>'''),
          
          _buildHeader('PHP Cookies'),
          _buildParagraph(
              'Cookies are small pieces of data sent from a server and stored on the client’s browser. They can be used to remember user preferences, login states, and other information.'),
          
          _buildSubHeader('Setting a Cookie'),
          _buildParagraph(
              'To set a cookie, use the `setcookie()` function. The `setcookie()` function must be called before any output is sent to the browser.'),
          _buildCodeBlock('''<?php
setcookie("username", "JohnDoe", time() + 3600);
echo "Cookie has been set.";
?>'''),
          
          _buildSubHeader('Accessing a Cookie'),
          _buildParagraph(
              'To access cookie data, use the `$_COOKIE` superglobal array.'),
          _buildCodeBlock('''<?php
if (isset($_COOKIE["username"])) {
    echo "Welcome " . $_COOKIE["username"];
} else {
    echo "Cookie not set.";
}
?>'''),
          
          _buildSubHeader('Deleting a Cookie'),
          _buildParagraph(
              'To delete a cookie, use the `setcookie()` function with an expiration time set in the past.'),
          _buildCodeBlock('''<?php
setcookie("username", "", time() - 3600);
echo "Cookie has been deleted.";
?>'''),
          
          _buildSubHeader('Cookie Parameters'),
          _buildParagraph(
              'When setting a cookie, you can specify parameters such as expiration time, path, domain, secure flag, and HTTP only flag.'),
          _buildCodeBlock('''<?php
setcookie("username", "JohnDoe", time() + 3600, "/", "example.com", true, true);
echo "Secure cookie has been set.";
?>'''),
          
          _buildSubHeader('Cookie Scope'),
          _buildParagraph(
              'Cookies can be scoped to a specific path or domain. The scope determines which pages or subdomains can access the cookie.'),
          
          _buildSubHeader('Session vs. Cookie'),
          _buildParagraph(
              'Sessions are stored on the server and are more secure, whereas cookies are stored on the client’s browser. Sessions are typically used for sensitive information, while cookies are used for less sensitive data like user preferences.'),
          
          _buildSubHeader('Summary'),
          _buildParagraph(
              'Sessions and cookies are crucial for managing user state and data in web applications. Sessions are secure and server-side, while cookies are client-side and can be configured for various purposes. Understanding both tools is essential for effective PHP programming.'),
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
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }

  Widget _buildSubHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.cyanAccent,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
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
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black54,
      child: Text(
        code,
        style: TextStyle(
          color: Colors.greenAccent,
          fontFamily: 'Courier',
          fontSize: 16.0,
        ),
      ),
    );
  }
}

class _COOKIE {
}
