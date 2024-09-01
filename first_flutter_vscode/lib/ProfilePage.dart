import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_flutter_vscode/Pages/Edit_profile.dart';
import 'package:first_flutter_vscode/main.dart'; // Import the main page
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = "User";
  String userBio = "Passionate developer and lifelong learner.";
  final String userImage = "https://www.example.com/user_image.png"; // Replace with your image URL
  final int followers = 0;
  final int following = 0;
  final int posts = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(context),
            _buildStatsSection(),
            _buildPostsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(userImage),
          ),
          SizedBox(height: 10),
          Text(
            userName,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            userBio,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage(
                  initialName: userName,
                  initialBio: userBio,
                )),
              ).then((result) {
                if (result != null && result is Map<String, String>) {
                  setState(() {
                    userName = result['name']!;
                    userBio = result['bio']!;
                  });
                }
              });
            },
            child: Text('Edit Profile'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()), // Redirect to the main page
                (Route<dynamic> route) => false, // Prevent back navigation
              );
            },
            child: Text('Sign Out'),
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 251, 163, 163)),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Followers', followers),
          _buildStatItem('Following', following),
          _buildStatItem('Posts', posts),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildPostsSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Posts',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildPostItem(
            title: 'Learning Flutter',
            content: 'Flutter is an awesome framework for building mobile apps...',
            date: 'May 25, 2024',
          ),
          _buildPostItem(
            title: 'JavaScript Tips',
            content: 'Here are some cool tips for writing better JavaScript code...',
            date: 'May 20, 2024',
          ),
          // Add more post items here
        ],
      ),
    );
  }

  Widget _buildPostItem({required String title, required String content, required String date}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              content,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Text(
              date,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
