import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StackView"),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1605640840605-14ac1855827b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a2F0aG1hbmR1fGVufDB8fDB8fHww&w=1000&q=80"),
          const SizedBox(
            height: 200,
            width: double.infinity,
          ),
          const Positioned(
            bottom: -20,
            left: 1,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/pic1.webp"),
            ),
          ),
        ],
      ),
    );
  }
}
