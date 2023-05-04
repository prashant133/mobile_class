import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("container"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: const Text('Hello world'),
          ),
        ),
      ),
    );
  }
}
