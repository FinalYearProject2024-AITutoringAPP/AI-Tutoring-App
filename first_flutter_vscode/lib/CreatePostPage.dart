import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePostPage extends StatefulWidget {
  final Function(String, String) onPostCreated;

  CreatePostPage({required this.onPostCreated});

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        title: Text('Create Post',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Times New Roman',
          ),),
        backgroundColor: Colors.cyan,
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.onPostCreated(
                  _titleController.text,
                  _contentController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Post',
              style: TextStyle(
            fontWeight: FontWeight.bold,
           
            fontFamily: 'Times New Roman',
            color: Colors.black
          ),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}