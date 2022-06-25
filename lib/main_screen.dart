import 'package:flutter/material.dart';
import 'package:flutter_note/model/note_data.dart';
import 'note_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Note',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final NoteData data = NoteDataList[index];

          return Center(
            child: Container(
              width: 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NoteScreen(data: data);
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 32,
                        ),
                        child: Row(
                          children: [
                            Text(
                              data.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Staatliches',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: NoteDataList.length,
      ),
    );
  }
}
