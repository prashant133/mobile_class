import 'package:flutter/material.dart';

class OutputScreenView extends StatefulWidget {
  const OutputScreenView({super.key});

  @override
  State<OutputScreenView> createState() => _OutputScreenViewState();
}

class _OutputScreenViewState extends State<OutputScreenView> {
  int? result;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    result = ModalRoute.of(context)!.settings.arguments as int?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body:  SafeArea(
        child: Center(
          child: Text("Result is ${result.toString()}"),
        ),
      ),
    );
  }
}
