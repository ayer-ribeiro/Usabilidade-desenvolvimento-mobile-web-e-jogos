import 'package:flutter/material.dart';

void main() {
  runApp(
    Home(),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          child: Image.network(
            "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          padding: EdgeInsets.all(120),
        ),
      ),
    );
  }
}
