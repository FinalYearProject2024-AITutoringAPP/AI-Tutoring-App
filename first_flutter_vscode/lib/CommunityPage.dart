import 'package:flutter/material.dart';
import 'CreatePostPage.dart'; // Ensure this is the correct path to your CreatePostPage.dart file

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final List<Post> posts = [
    Post(
      title: 'Code Zone',
      content: 'It is a app that is aimed at helping student learn and improve upon their programming skills',
      likes: 120,
      comments: 30,
    ),
    Post(
      title: 'Code Zone',
      content: 'It is a very helpful and insightful app',
      likes: 85,
      comments: 20,
    ),
    // Add more posts here
  ];

  void _addNewPost(String title, String content) {
    setState(() {
      posts.add(Post(title: title, content: content, likes: 0, comments: 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: CommunityContent(posts: posts),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePostPage(onPostCreated: _addNewPost),
            ),
          );
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CommunityContent extends StatelessWidget {
  final List<Post> posts;

  CommunityContent({required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostCard(post: posts[index]);
      },
    );
  }
}

class Post {
  final String title;
  final String content;
  final int likes;
  final int comments;

  Post({
    required this.title,
    required this.content,
    required this.likes,
    required this.comments,
  });
}

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              post.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up, color: Colors.cyan),
                    SizedBox(width: 5.0),
                    Text(post.likes.toString()),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment, color: Colors.cyan),
                    SizedBox(width: 5.0),
                    Text(post.comments.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}