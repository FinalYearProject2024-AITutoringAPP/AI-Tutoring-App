import 'package:flutter/material.dart';
import 'Cloud_Firestore.dart';
import 'api_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() {
  runApp(MaterialApp(
    home: AIChatScreen(),
  ));
}

class AIChatScreen extends StatefulWidget {
  const AIChatScreen({Key? key}) : super(key: key);

  @override
  _AIChatScreenState createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];
  final ApiService _apiService = ApiService(apiKey:  '${dotenv.env['API_KEY']}'); 
  final FirestoreService _firestoreService = FirestoreService();

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  Future<void> _loadMessages() async {
    List<Map<String, dynamic>> messages = await _firestoreService.loadMessages();
    setState(() {
      _messages.clear();
      for (var message in messages) {
        _messages.add('${message['role'] == 'user' ? 'You' : 'AI'}: ${message['content']}');
      }
    });
  }

  void _sendMessage(String message) async {
    if (message.isEmpty) return;

    setState(() {
      _messages.add('You: $message');
    });

    try {
      await _firestoreService.saveMessage(message, 'user'); // Save user message to Firestore
      final response = await _apiService.sendMessage(message);
      setState(() {
        _messages.add('AI: $response');
      });
      await _firestoreService.saveMessage(response, 'ai'); // Save AI response to Firestore
    } catch (e) {
      setState(() {
        _messages.add('AI: Failed to get response $e');
      });
    }

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildMessageComposer(),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 175, 190, 198),
    );
  }

  Widget _buildMessageComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _messageController,
                onSubmitted: (text) => _sendMessage(text),
                decoration: InputDecoration.collapsed(
                  hintText: "Type your message here...",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _sendMessage(_messageController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
