import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpandedFitedBoxContainsWidget(
          child: const FlutterLogo(),
        ),
        ExpandedFitedBoxContainsWidget(
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
        Expanded(
          child: Text(
            'Google Flutter.',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class ExpandedFitedBoxContainsWidget extends StatelessWidget {
  const ExpandedFitedBoxContainsWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.contain,
        child: this.child,
      ),
    );
  }
}
