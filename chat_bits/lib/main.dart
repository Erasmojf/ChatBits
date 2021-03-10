import 'package:chat_bits/ui/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
  FirebaseFirestore.instance.collection('mensagens').doc("msg1").set(
      {'texto': 'Olá',
  'from': 'Maia', 'read': false});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatBits',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(),
    );
  }
}
