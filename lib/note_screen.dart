import 'package:flutter/material.dart';
import 'package:flutter_note/model/note_data.dart';

class NoteScreen extends StatelessWidget {
  final NoteData data;

  NoteScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Text(
                data.text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
