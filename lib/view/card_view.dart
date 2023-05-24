import 'package:batch_30a/common/show_my_message.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  Widget displayCard({required String title, required int count}) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.grey,
        child: Center(
          child: Text(
            "$title ${count + 1}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 10; i++) ...{
              GestureDetector(
                onTap: () {
                  showMessage(context, "Clicked the snackbar",
                      color: Colors.green);
                },
                onDoubleTap: () {
                  showMessage(context, 'message');
                },
                child: displayCard(title: "inside", count: i),
              ),
            },
          ],
        ),
      ),
    );
  }
}
