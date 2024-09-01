import 'package:first_flutter_vscode/CommunityPage.dart';
import 'package:first_flutter_vscode/Pages/AIchat.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/C++.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/CSS.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Cprogramming.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Django.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/HTML.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/JAVA.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/Javascriptessentials.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/NodeJs.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PHP.dart';
import 'package:first_flutter_vscode/Pages/languges_pages/PythonBasics.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_vscode/ProfilePage.dart';
import 'package:first_flutter_vscode/SearchPage.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    AIChatScreen(),
    CommunityPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getAppBarTitle() {
    switch (_selectedIndex) {
      case 1: 
        return 'AI Chat';
      case 2:
        return 'Community';
      case 3:
        return 'Profile';
      default:
        return 'CodeZone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          _getAppBarTitle(),
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        actions: _selectedIndex == 0
            ? [
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                ),
              ]
            : null,
        backgroundColor: Colors.cyan,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'AI Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(
                  'Welcome to CODE ZONE',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Your AI-powered platform to learn programming languages.',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          _buildSectionTitle(context, 'Featured Courses'),
          _buildFeaturedCourses(context),
          _buildSectionTitle(context, 'Popular Challenges'),
          _buildPopularChallenges(),
          _buildSectionTitle(context, 'Community Highlights'),
          _buildCommunityFeed(),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Times New Roman',
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.cyan,
        ),
      ),
    );
  }

  Widget _buildFeaturedCourses(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CarouselSlider(
        options: CarouselOptions(height: 200.0),
        items: [
          _buildCourseCard('Python Basics', Icons.code, PythonBasicsPage(), context),
          _buildCourseCard('JavaScript', Icons.code_rounded, JavaScriptEssentialsPage(), context),
          _buildCourseCard('Node.Js', Icons.bug_report, NodejsPage(), context),
          _buildCourseCard('C++', Icons.code_rounded, CPlusPlusPage(), context),
          _buildCourseCard('JAVA', Icons.code_rounded, JavaPage(), context),
          _buildCourseCard('C Programming', Icons.code_rounded, CProgrammingPage(), context),
          _buildCourseCard('CSS', Icons.code_rounded, CSSPage(), context),
          _buildCourseCard('HTML', Icons.code_rounded, HTMLPage(), context),
          _buildCourseCard('PHP', Icons.code_rounded, PHPPage(), context),
          _buildCourseCard('Django', Icons.code_rounded, DjangoPage(), context),
        ],
      ),
    );
  }

  Widget _buildCourseCard(String title, IconData icon, Widget page, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.amber[600],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.white),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularChallenges() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      height: 200,
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildChallengeItem('30 Days of Code', 70),
          _buildChallengeItem('Algorithm Marathon', 40),
          _buildChallengeItem('Dart Mastery', 80),
        ],
      ),
    );
  }

  Widget _buildChallengeItem(String title, int progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: Colors.grey,
              color: Colors.cyan,
            ),
          ),
          SizedBox(width: 10),
          Text('$progress%', style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  Widget _buildCommunityFeed() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      height: 400,
      color: Colors.grey[400],
      child: ListView(
        children: [
          _buildCommunityPost('User1', 'How do I start learning Python?'),
          _buildCommunityPost('User2', 'What are some good Node.js tutorials?'),
          _buildCommunityPost('User3', 'Let’s discuss AI in programming!'),
        ],
      ),
    );
  }

  Widget _buildCommunityPost(String user, String message) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(child: Text(user[0])),
        title: Text(user),
        subtitle: Text(message),
      ),
    );
  }
}


