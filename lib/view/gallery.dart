import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgs = [
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.GZPYpvkNIMv2K2oRfcRJ-gHaHa%26pid%3DApi&f=1&ipt=19bef13ed8d97f1eb7a8eb3c283f174384942fcb79d7821eda130e9abcbc20c2&ipo=images",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.DUaHO07XVwZJ9Zt1HjReEwHaHa%26pid%3DApi&f=1&ipt=b37284d08ff82be9255d99218e239123a960e16070a1db887842a4c9756fc6a5&ipo=images",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.BFI0AlkD3gvGdl5LP2B5ugHaHa%26pid%3DApi&f=1&ipt=1f14e491ee384491655fe8d09f7a8bb1bf4894b7b4d2c08cc7ce02d6fce39996&ipo=images",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 6,
          ),
          itemCount: 1000,
          itemBuilder: (context, index) {
            final imageIndex = index % imgs.length;
            return Image.network(
              imgs[imageIndex],
            );
          },
        ),
      ),
    );
  }
}
