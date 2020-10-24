import 'package:flutter/material.dart';
import '../../model/picture.dart';
import '../../data/picturesGetter.dart';
import '../../ui/home/widgets/pictureWidget.dart';

class Home extends StatelessWidget {
  final List<Picture> litems = PicturesGetter().getPictures();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: litems.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return PictureWidget(picture: litems[index]);
        },
      ),
    );
  }
}
