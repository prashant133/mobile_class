import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Load Image"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // for (int i = 0; i < 10; i++) ...{
                //   if (i % 2 == 0)
                //     Text(
                //       i.toString(),
                //     ),
                // }
                // const CircleAvatar(
                //   radius: 200,
                //   backgroundImage: AssetImage('assets/images/bhoot.jpg'),
                // ),
                Image.network(
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.avb9nDfw3kq7NOoP0grM4wHaEK%26pid%3DApi&f=1&ipt=03e2fbad44c3e94b333be69146b78f547174de09e4137120297dbb20fab23c95&ipo=images',
                  fit: BoxFit.fitHeight,
                )
              ],
            ),
          ),
        ));
  }
}
