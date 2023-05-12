import 'package:flutter/material.dart';

class GirdViewScreen extends StatelessWidget {
  const GirdViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid view"),
          centerTitle: true,
          elevation: 0,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          children: [
            for (int i = 0; i < 4; i++)
              const Card(
                color: Colors.amber,
                child: (Text("data")),
              ),
          ],
        ));
  }
}
