import 'package:flutter/material.dart';
import 'package:flutter_note/model/note_data.dart';

class NoteScreen extends StatelessWidget {
  final NoteData data;

  NoteScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(data.title), PinButton()],
        ),
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

class PinButton extends StatefulWidget {
  @override
  State<PinButton> createState() => _PinButtonState();
}

class _PinButtonState extends State<PinButton> {
  bool isPin = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isPin = !isPin;
          });
        },
        icon: Icon(
          isPin ? Icons.star : Icons.star_border,
          color: Colors.yellow,
        ));
  }
}
