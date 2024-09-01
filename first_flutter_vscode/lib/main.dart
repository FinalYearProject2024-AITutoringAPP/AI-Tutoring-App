import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_vscode/Pages/LoginPage.dart';
import 'package:first_flutter_vscode/Pages/SignUp.dart';
import 'package:flutter/material.dart';
import 'SplashScreen.dart';



void main()  async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class Home extends StatelessWidget {
  const Home(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.cyan,

      appBar: AppBar( 
        title: Text('CODE ZONE' ,
        
        style: TextStyle(
          fontSize: 30.0,  
          fontWeight: FontWeight.bold,
          fontFamily:'Times New Roman',
        ),
        
        ),


        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                   fontFamily:'Times New Roman',
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Adding some spacing between text and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
                },
                child: Text('Login',
                style:TextStyle(
                  fontFamily:'Times New Roman',
                ) ,),
              ),
              SizedBox(width: 20), // Adding some spacing between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
                },
                child: Text('Sign Up',
                style: TextStyle(
                   fontFamily:'Times New Roman',
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
   
  
  
   
      
  
  
