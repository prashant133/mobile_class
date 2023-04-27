import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.blue,
              ),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.grey,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.blue,
              ),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.grey,
              ),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
