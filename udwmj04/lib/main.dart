import 'package:flutter/material.dart';

void main() {
  runApp(
    Row(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        buildExpandedImageFromUrl(
          'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
        ),
        buildExpandedImageFromUrl(
          'https://picsum.photos/250?image=9',
        ),
        buildExpandedImageFromUrl(
          'https://picsum.photos/250?image=9',
        ),
      ],
    ),
  );
}

Widget buildExpandedImageFromUrl(String url) {
  return Expanded(
    child: FittedBox(
      fit: BoxFit.contain,
      child: Image.network(
        url,
      ),
    ),
  );
}
