import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> saveMessage(String message, String role) async {
    User? user = _auth.currentUser;
    if (user != null) {
      await _firestore.collection('chats').doc(user.uid).collection('messages').add({
        'role': role,
        'content': message,
        'timestamp': FieldValue.serverTimestamp(),
      });
    }
  }

  Future<List<Map<String, dynamic>>> loadMessages() async {
    User? user = _auth.currentUser;
    if (user != null) {
      QuerySnapshot snapshot = await _firestore.collection('chats').doc(user.uid).collection('messages').orderBy('timestamp', descending: false).get();
      return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    }
    return [];
  }
}
