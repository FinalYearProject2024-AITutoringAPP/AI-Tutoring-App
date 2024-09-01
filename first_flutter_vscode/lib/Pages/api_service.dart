import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String apiKey;
  final String baseUrl = 'https://api.openai.com/v1/chat/completions'; 

  ApiService({required this.apiKey});

  Future<String> sendMessage(String message) async {
    final Map<String, dynamic> requestBody = {
      "model": "gpt-4",
      "messages": [
        {"role": "system", "content": "You are a helpful AI tutor."},
        {"role": "user", "content": message},
      ],
      "max_tokens": 150,
      "temperature": 0.7,
    };

    final response = await http.post(
      Uri.parse('$baseUrl'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      String aiResponse = data['choices'][0]['message']['content'];
      return aiResponse;
    } else {
      throw Exception('Failed to get AI response');
    }
  }
}
