import 'package:flutter/material.dart';
import 'package:notepad_sync/models/note_data.dart';
import 'pages/home_page.dart';
import 'package:provider/provider.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
