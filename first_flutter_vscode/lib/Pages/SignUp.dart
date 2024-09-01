import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/Pages/LoginPage.dart';
import 'package:first_flutter_vscode/Firebase_Auth_service.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  final FirebaseAuthService _authService = FirebaseAuthService(); 

  // Function to validate email format
  bool isValidEmail(String email) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(email);
  }

  // Function to validate password strength
  bool isValidPassword(String password) {
    return password.length >= 8 && // Minimum length
        RegExp(r'[A-Z]').hasMatch(password) && // At least one uppercase letter
        RegExp(r'[a-z]').hasMatch(password) && // At least one lowercase letter
        RegExp(r'[0-9]').hasMatch(password) && // At least one number
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password); // At least one special character
  }

  bool isValidForm(String username, String email, String password, String confirmPassword) {
    return username.isNotEmpty && isValidEmail(email) && isValidPassword(password) && password == confirmPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create an Account',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                errorText: !isValidEmail(emailController.text) && emailController.text.isNotEmpty ? 'Invalid email format' : null,
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: !isValidPassword(passwordController.text) && passwordController.text.isNotEmpty ? 'Password must be at least 8 characters and include uppercase, lowercase, number, and special character' : null,
              ),
              obscureText: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: confirmpasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                errorText: passwordController.text != confirmpasswordController.text && confirmpasswordController.text.isNotEmpty ? 'Passwords do not match' : null,
              ),
              obscureText: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                String username = usernameController.text;
                String email = emailController.text;
                String password = passwordController.text;
                String confirmPassword = confirmpasswordController.text;

                if (isValidForm(username, email, password, confirmPassword)) {
                  User? user = await _authService.signUpWithEmail(email, password);

                  if (user != null) {
                    print('Account successfully created');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Sign up failed. Please try again.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Please fill all fields correctly.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}
