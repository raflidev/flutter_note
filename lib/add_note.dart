import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_note/main_screen.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Tolong masukan text";
                }
                return null;
              },
              decoration: InputDecoration(hintText: "Judul"),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Tolong masukan text";
                }
                return null;
              },
              decoration: InputDecoration(hintText: "Isi"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data Tersimpan (Testing)')),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Submit',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
