import 'package:flutter/material.dart';

import '../common/show_my_message.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    // saves the height and the width of the screen
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query View"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              // height: 600,
              color: Colors.greenAccent,
              child: ElevatedButton(
                  onPressed: () {
                    showMessage(context, "Button 1 Clicked",
                        color: Colors.blue);
                  },
                  child: const Text("Click me")),
            ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              // height: 200,
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () {
                  showMessage(context, "hello world 2");
                },
                child: const Text("Click me"),
              ),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: height * .33,
          //   color: Colors.blueGrey,
          // )
        ],
      ),
    );
  }
}
