import 'package:flutter/material.dart';
import '../../../model/picture.dart';
import '../../../ui/details/details.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
    @required this.picture,
  }) : super(key: key);

  final Picture picture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: FlatButton(
        child: Image.network(
          picture.imgUrl,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                picture: picture,
              ),
            ),
          );
        },
      ),
    );
  }
}
