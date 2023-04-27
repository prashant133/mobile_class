import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RichText(
        text: const TextSpan(
          text: 'I\'m ',
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 30,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Prashant Deshar',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
